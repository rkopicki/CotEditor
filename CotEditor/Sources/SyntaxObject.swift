//
//  SyntaxObject.swift
//
//  CotEditor
//  https://coteditor.com
//
//  Created by 1024jp on 2023-01-19.
//
//  ---------------------------------------------------------------------------
//
//  © 2023-2024 1024jp
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

final class SyntaxObject: ObservableObject {
    
    typealias Comment = Syntax.Comment
    typealias Metadata = Syntax.Metadata
    
    
    struct Highlight: Identifiable, EmptyInitializable {
        
        let id = UUID()
        
        var begin: String = ""
        var end: String?
        var isRegularExpression: Bool = false
        var ignoreCase: Bool = false
        var description: String?
    }
    
    
    struct Outline: Identifiable, EmptyInitializable {
        
        let id = UUID()
        
        var pattern: String = ""
        var template: String = ""
        var ignoreCase: Bool = false
        var bold: Bool = false
        var italic: Bool = false
        var underline: Bool = false
        var description: String?
    }
    
    
    struct KeyString: Identifiable, EmptyInitializable {
        
        let id = UUID()
        
        var string: String = ""
    }
    
    
    @Published var kind: Syntax.Kind = .general
    
    @Published var keywords: [Highlight] = []
    @Published var commands: [Highlight] = []
    @Published var types: [Highlight] = []
    @Published var attributes: [Highlight] = []
    @Published var variables: [Highlight] = []
    @Published var values: [Highlight] = []
    @Published var numbers: [Highlight] = []
    @Published var strings: [Highlight] = []
    @Published var characters: [Highlight] = []
    @Published var comments: [Highlight] = []
    
    @Published var commentDelimiters: Comment = Comment()
    @Published var outlines: [Outline] = []
    @Published var completions: [KeyString] = []
    
    @Published var filenames: [KeyString] = []
    @Published var extensions: [KeyString] = []
    @Published var interpreters: [KeyString] = []
    
    @Published var metadata: Metadata = Metadata()
    
    
    static func highlightKeyPath(for type: SyntaxType) -> WritableKeyPath<SyntaxObject, [Highlight]> {
        
        switch type {
            case .keywords: \.keywords
            case .commands: \.commands
            case .types: \.types
            case .attributes: \.attributes
            case .variables: \.variables
            case .values: \.values
            case .numbers: \.numbers
            case .strings: \.strings
            case .characters: \.characters
            case .comments: \.comments
        }
    }
}



// MARK: Definition Conversion

extension SyntaxObject {
    
    typealias Value = Syntax
    
    convenience init(value: Value? = nil) {
        
        self.init()
        
        if let value {
            self.update(with: value)
        }
    }
    
    
    func update(with value: Value) {
        
        self.keywords = value.keywords.map { .init(value: $0) }
        self.commands = value.commands.map { .init(value: $0) }
        self.types = value.types.map { .init(value: $0) }
        self.attributes = value.attributes.map { .init(value: $0) }
        self.variables = value.variables.map { .init(value: $0) }
        self.values = value.values.map { .init(value: $0) }
        self.numbers = value.numbers.map { .init(value: $0) }
        self.strings = value.strings.map { .init(value: $0) }
        self.characters = value.characters.map { .init(value: $0) }
        self.comments = value.comments.map { .init(value: $0) }
        
        self.commentDelimiters = value.commentDelimiters
        self.outlines = value.outlines.map { .init(value: $0) }
        self.completions = value.completions.map { .init(value: $0) }
        
        self.filenames = value.filenames.map { .init(value: $0) }
        self.extensions = value.extensions.map { .init(value: $0) }
        self.interpreters = value.interpreters.map { .init(value: $0) }
        
        self.metadata = value.metadata
    }
    
    
    var value: Value {
        
        Value(keywords: self.keywords.map(\.value),
              commands: self.commands.map(\.value),
              types: self.types.map(\.value),
              attributes: self.attributes.map(\.value),
              variables: self.variables.map(\.value),
              values: self.values.map(\.value),
              numbers: self.numbers.map(\.value),
              strings: self.strings.map(\.value),
              characters: self.characters.map(\.value),
              comments: self.comments.map(\.value),
              
              commentDelimiters: self.commentDelimiters,
              outlines: self.outlines.map(\.value),
              completions: self.completions.map(\.value),
              
              filenames: self.filenames.map(\.value),
              extensions: self.extensions.map(\.value),
              interpreters: self.interpreters.map(\.value),
              
              metadata: self.metadata)
    }
}


extension SyntaxObject.Highlight {
    
    typealias Value = Syntax.Highlight
    
    init(value: Value) {
        
        self.begin = value.begin
        self.end = value.end
        self.isRegularExpression = value.isRegularExpression
        self.ignoreCase = value.ignoreCase
        self.description = value.description
    }
    
    
    var value: Value {
        
        Value(begin: self.begin,
              end: self.end,
              isRegularExpression: self.isRegularExpression,
              ignoreCase: self.ignoreCase,
              description: self.description)
    }
}


extension SyntaxObject.Outline {
    
    typealias Value = Syntax.Outline
    
    init(value: Value) {
        
        self.pattern = value.pattern
        self.template = value.template
        self.ignoreCase = value.ignoreCase
        self.bold = value.bold
        self.italic = value.italic
        self.underline = value.underline
        self.description = value.description
    }
    
    
    var value: Value {
        
        Value(pattern: self.pattern,
              template: self.template,
              ignoreCase: self.ignoreCase,
              bold: self.bold,
              italic: self.italic,
              underline: self.underline,
              description: self.description)
    }
}


extension SyntaxObject.KeyString {
    
    typealias Value = Syntax.KeyString
    
    init(value: Value) {
        
        self.string = value.keyString
    }
    
    
    var value: Value {
        
        Value(keyString: self.string)
    }
}


extension SyntaxObject.Highlight: Equatable {
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        
        lhs.begin == rhs.begin &&
        lhs.end == rhs.end &&
        lhs.isRegularExpression == rhs.isRegularExpression &&
        lhs.ignoreCase == rhs.ignoreCase
    }
}
