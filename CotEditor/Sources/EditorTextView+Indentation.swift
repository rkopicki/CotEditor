/*
 
 EditorTextView+Indentation.swift
 
 CotEditor
 https://coteditor.com
 
 Created by 1024jp on 2016-01-10.
 
 ------------------------------------------------------------------------------
 
 © 2014-2016 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import Cocoa

extension EditorTextView {
    
    // MARK: Action Messages
    
    /// increase indent level
    @IBAction func shiftRight(_ sender: AnyObject?) {
        
        guard let string = self.string, self.tabWidth > 0 else { return }
        
        // get range to process
        let selectedRange = self.selectedRange()
        var lineRange = (string as NSString).lineRange(for: selectedRange)
        
        // remove the last line ending
        if lineRange.length > 0 {
            lineRange.length -= 1
        }
        
        // create indent string to prepend
        let indent = self.isAutomaticTabExpansionEnabled ? String(repeating: Character(" "), count: self.tabWidth) : "\t"
        let indentLength = indent.utf16.count
        
        // create shifted string
        var newLines = [String]()
        if lineRange.length == 0 {
            newLines = [indent]
        } else {
            (string as NSString).substring(with: lineRange).enumerateLines { (line, stop) in
                newLines.append(indent + line)
            }
        }
        
        let newString = newLines.joined(separator: "\n")
        let numberOfLines = newLines.count
        
        // calculate new selection range
        var newSelectedRange = NSRange(location: selectedRange.location,
                                       length: selectedRange.length + indentLength * numberOfLines)
        if lineRange.location == selectedRange.location && selectedRange.length > 0 && (string as NSString).substring(with: selectedRange).hasSuffix("\n") {
            // keep selecting from the line head to the line end
            newSelectedRange.length += indentLength
        } else {
            newSelectedRange.location += indentLength
        }
        
        // perform replace and register to undo manager
        self.replace(with: newString, range: lineRange, selectedRange: newSelectedRange,
                     actionName: NSLocalizedString("Shift Right", comment: "action name"))
    }
    
    
    /// decrease indent level
    @IBAction func shiftLeft(_ sender: AnyObject?) {
        
        guard let string = self.string, self.tabWidth > 0 else { return }
        
        // get range to process
        let selectedRange = self.selectedRange()
        var lineRange = (string as NSString).lineRange(for: selectedRange)
        
        guard lineRange.length > 0 else { return }  // do nothing with blank line
        
        // remove the last line ending
        let lastLineCharacterIndex = string.utf16.startIndex.advanced(by: lineRange.max - 1).samePosition(in: string)!
        if lineRange.length > 0 && string.characters[lastLineCharacterIndex] == "\n" {
            lineRange.length -= 1
        }
        
        // create shifted string
        var newLines = [String]()
        let tabWidth = self.tabWidth
        var newSelectedRange = selectedRange
        var didShift = false
        var scanningLineLocation = lineRange.location
        var isFirstLine = true
        
        // scan selected lines and remove tab/spaces at the beginning of lines
        (string as NSString).substring(with: lineRange).enumerateLines { (line, stop) in
            var numberOfDeleted = 0
            var newLine = line
            
            // count tab/spaces to delete
            var isDeletingSpace = false
            for character in line.characters {
                if character == "\t" && !isDeletingSpace {
                    newLine.remove(at: newLine.startIndex)
                    numberOfDeleted += 1
                    break
                } else if character == " " {
                    newLine.remove(at: newLine.startIndex)
                    numberOfDeleted += 1
                    isDeletingSpace = true
                } else {
                    break
                }
                guard numberOfDeleted < tabWidth else { break }
            }
            
            // calculate new selection range
            let deletedRange = NSRange(location: scanningLineLocation, length: numberOfDeleted)
            newSelectedRange.length -= NSIntersectionRange(deletedRange, newSelectedRange).length
            if isFirstLine {
                newSelectedRange.location = max(selectedRange.location - numberOfDeleted,
                                                lineRange.location)
                isFirstLine = false
            }
            
            // append new line
            newLines.append(newLine)
            
            didShift = didShift ? true : (numberOfDeleted > 0)
            scanningLineLocation += newLine.utf16.count + 1  // +1 for line ending
        }
        
        // cancel if not shifted
        guard didShift else { return }
        
        let newString = newLines.joined(separator: "\n")
        
        // perform replace and register to undo manager
        self.replace(with: newString, range: lineRange, selectedRange: newSelectedRange,
                     actionName: NSLocalizedString("Shift Left", comment: "action name"))
    }
    
    
    /// standardize inentation in selection to spaces
    @IBAction func convertIndentationToSpaces(_ sender: AnyObject?) {
        
        self.convertIndentation(style: .space)
        
    }
    
    
    /// standardize inentation in selection to tabs
    @IBAction func convertIndentationToTabs(_ sender: AnyObject?) {
        
        self.convertIndentation(style: .tab)
    }
    
    
    
    // MARK: Private Methods
    
    /// standardize inentation of given ranges
    private func convertIndentation(style: IndentStyle) {
        
        guard let string = self.string, !string.isEmpty else { return }
        
        var ranges = [NSRange]()
        if self.selectedRange().length == 0 {  // convert all if nothing selected
            ranges = [string.nsRange]
        } else {
            ranges = self.selectedRanges as! [NSRange]
        }
        
        var replacementRanges = [NSRange]()
        var replacementStrings = [String]()
        
        for range in ranges {
            let selectedString = (string as NSString).substring(with: range)
            let convertedString = selectedString.standardizingIndent(to: style, tabWidth: self.tabWidth)
            
            guard convertedString != selectedString else { continue }  // no need to convert
            
            replacementRanges.append(range)
            replacementStrings.append(convertedString)
        }
        
        self.replace(with: replacementStrings, ranges: replacementRanges, selectedRanges: nil,
                     actionName: NSLocalizedString("Convert Indentation", comment: "action name"))
    }
    
}
