//
//  EncodingManager.swift
//
//  CotEditor
//  https://coteditor.com
//
//  Created by 1024jp on 2014-09-24.
//
//  ---------------------------------------------------------------------------
//
//  © 2004-2007 nakamuxu
//  © 2014-2024 1024jp
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import Observation
import Combine
import Defaults
import FileEncoding

@Observable final class EncodingManager {
    
    // MARK: Public Properties
    
    nonisolated(unsafe) static let shared = EncodingManager(defaults: .standard)
    
    private(set) var fileEncodings: [FileEncoding?] = []
    
    
    // MARK: Private Properties
    
    private let defaults: UserDefaults

    private var defaultObserver: AnyCancellable?
    
    
    // MARK: Lifecycle
    
    private init(defaults: UserDefaults) {
        
        self.defaults = defaults
        
        // -> UserDefaults.standard[.encodingList] can be empty if the user's list contains negative values.
        //    It seems to be possible if the setting was made a long time ago. (2018-01 CotEditor 3.3.0)
        if defaults[.encodingList].isEmpty {
            self.sanitizeEncodingListSetting()
        }
        
        self.defaultObserver = defaults.publisher(for: .encodingList, initial: true)
            .map { $0
                .map { $0 != kCFStringEncodingInvalidId ? FileEncoding(encoding: String.Encoding(cfEncoding: $0)) : nil }
                .filter { $0.map { String.availableStringEncodings.contains($0.encoding) } ?? true }
                .flatMap {
                    // add "UTF-8 with BOM" item just after the normal UTF-8
                    ($0?.encoding == .utf8) ? [$0, FileEncoding(encoding: .utf8, withUTF8BOM: true)] : [$0]
                }
            }
            .sink { [weak self] in self?.fileEncodings = $0 }
    }
    
    
    // MARK: Public Methods
    
    /// User text encoding.
    var defaultEncoding: FileEncoding {
        
        get {
            let rawValue = self.defaults[.encoding]
            let encoding = (rawValue >= 0) ? String.Encoding(rawValue: UInt(rawValue)) : .utf8
            let availableEncoding = String.availableStringEncodings.contains(encoding) ? encoding : .utf8
            let withBOM = (availableEncoding == .utf8) && self.defaults[.saveUTF8BOM]
            
            return FileEncoding(encoding: availableEncoding, withUTF8BOM: withBOM)
        }
        
        set {
            self.defaults[.encoding] = Int(newValue.encoding.rawValue)
            self.defaults[.saveUTF8BOM] = newValue.withUTF8BOM
        }
    }
    
    
    /// Returns corresponding String.Encoding from an encoding name.
    ///
    /// - Parameter encodingName: The name of the encoding to find.
    /// - Returns: A string encoding or nil.
    func encoding(name encodingName: String) -> String.Encoding? {
        
        self.fileEncodings.lazy
            .compactMap(\.self)
            .map(\.encoding)
            .first { encodingName == String.localizedName(of: $0) }
    }
    
    
    /// Returns corresponding String.Encoding from an IANA charset name.
    ///
    /// - Parameter encodingName: The IANA charset name of the encoding to find.
    /// - Returns: A string encoding or nil.
    func encoding(ianaCharSetName: String) -> String.Encoding? {
        
        self.fileEncodings.lazy
            .compactMap(\.self)
            .map(\.encoding)
            .first { $0.ianaCharSetName?.caseInsensitiveCompare(ianaCharSetName) == .orderedSame }
    }
    
    
    // MARK: Private Methods
    
    /// Converts invalid encoding values (-1) to `kCFStringEncodingInvalidId`.
    private func sanitizeEncodingListSetting() {
        
        guard
            let list = self.defaults.array(forKey: DefaultKeys.encodingList.rawValue) as? [Int],
            !list.isEmpty
        else {
            // just restore to default if failed
            self.defaults.restore(key: .encodingList)
            return
        }
        
        self.defaults[.encodingList] = list.map { CFStringEncoding(exactly: $0) ?? kCFStringEncodingInvalidId }
    }
}
