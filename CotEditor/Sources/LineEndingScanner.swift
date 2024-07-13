//
//  LineEndingScanner.swift
//
//  CotEditor
//  https://coteditor.com
//
//  Created by 1024jp on 2022-04-08.
//
//  ---------------------------------------------------------------------------
//
//  © 2022-2024 1024jp
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

import Combine
import Foundation
import Observation
import AppKit.NSTextStorage
import LineEnding
import ValueRange

@Observable final class LineEndingScanner: LineRangeCalculating {
    
    var baseLineEnding: LineEnding
    
    private(set) var lineEndings: [ValueRange<LineEnding>]
    private(set) var inconsistentLineEndings: [ValueRange<LineEnding>] = []
    
    var string: NSString  { self.textStorage.string as NSString }
    
    
    // MARK: Private Properties
    
    private let textStorage: NSTextStorage
    
    private var storageObserver: AnyCancellable?
    
    
    // MARK: Lifecycle
    
    required init(textStorage: NSTextStorage, lineEnding: LineEnding) {
        
        self.textStorage = textStorage
        self.baseLineEnding = lineEnding
        
        self.lineEndings = textStorage.string.lineEndingRanges()
        self.inconsistentLineEndings = self.lineEndings.filter { $0.value != lineEnding }
        
        self.storageObserver = NotificationCenter.default.publisher(for: NSTextStorage.didProcessEditingNotification, object: textStorage)
            .map { $0.object as! NSTextStorage }
            .filter { $0.editedMask.contains(.editedCharacters) }
            .sink { [weak self] in self?.invalidate(in: $0.editedRange, changeInLength: $0.changeInLength) }
    }
    
    
    // MARK: Public Methods
    
    /// Cancels all observations.
    func cancel() {
        
        self.storageObserver?.cancel()
    }
    
    
    /// The line endings mostly occurred in the storage.
    var majorLineEnding: LineEnding? {
        
        Dictionary(grouping: self.lineEndings, by: \.value)
            .sorted(\.value.first!.lowerBound)
            .max { $0.value.count < $1.value.count }?
            .key
    }
    
    
    /// Returns whether the character at the given index is a line ending inconsistent with the `baseLineEnding`.
    ///
    /// - Parameter characterIndex: The index of character to test.
    /// - Returns: A boolean indicating whether the character is an inconsistent line ending.
    func isInvalidLineEnding(at characterIndex: Int) -> Bool {
        
        self.inconsistentLineEndings.lazy.map(\.lowerBound).contains(characterIndex)
    }
    
    
    // MARK: Private Methods
    
    /// Updates inconsistent line endings by assuming the textStorage was edited.
    ///
    /// - Parameters:
    ///   - editedRange: The edited range.
    ///   - delta: The change in length.
    private func invalidate(in editedRange: NSRange, changeInLength delta: Int) {
        
        let string = self.textStorage.string.immutable
        
        // expand range to scan by considering the possibility that a part of CRLF was edited
        let nsString = string as NSString
        let lowerScanBound: Int = (0..<editedRange.lowerBound).reversed().lazy
            .prefix { [0xA, 0xD].contains(nsString.character(at: $0)) }
            .last ?? editedRange.lowerBound
        let upperScanBound: Int = (editedRange.upperBound..<nsString.length)
            .prefix { [0xA, 0xD].contains(nsString.character(at: $0)) }
            .last.flatMap { $0 + 1 } ?? editedRange.upperBound
        let scanRange = NSRange(lowerScanBound..<upperScanBound)
        
        let insertedLineEndings = string.lineEndingRanges(in: scanRange)
        let inconsistentLineEndings = insertedLineEndings.filter { $0.value != self.baseLineEnding }
        
        self.lineEndings.replace(items: insertedLineEndings, in: scanRange, changeInLength: delta)
        self.inconsistentLineEndings.replace(items: inconsistentLineEndings, in: scanRange, changeInLength: delta)
    }
}
