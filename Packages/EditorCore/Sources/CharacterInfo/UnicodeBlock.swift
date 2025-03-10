//
//  UnicodeBlock.swift
//  CharacterInfo
//
//  CotEditor
//  https://coteditor.com
//
//  Created by 1024jp on 2025-03-02.
//
//  ---------------------------------------------------------------------------
//
//  © 2025 1024jp
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

/// Returns localized Unicode block name.
///
/// - Parameter block: The Unicode block name determined in Blocks.txt.
/// - Returns: A localizad name.
func localizeBlockName(_ block: String) -> String? {
    
    switch block {
        case "Adlam": String(localized: "Adlam", table: "UnicodeBlock", bundle: .module)
        case "Aegean Numbers": String(localized: "Aegean Numbers", table: "UnicodeBlock", bundle: .module)
        case "Ahom": String(localized: "Ahom", table: "UnicodeBlock", bundle: .module)
        case "Alchemical Symbols": String(localized: "Alchemical Symbols", table: "UnicodeBlock", bundle: .module)
        case "Alphabetic Presentation Forms": String(localized: "Alphabetic Presentation Forms", table: "UnicodeBlock", bundle: .module)
        case "Anatolian Hieroglyphs": String(localized: "Anatolian Hieroglyphs", table: "UnicodeBlock", bundle: .module)
        case "Ancient Greek Musical Notation": String(localized: "Ancient Greek Musical Notation", table: "UnicodeBlock", bundle: .module)
        case "Ancient Greek Numbers": String(localized: "Ancient Greek Numbers", table: "UnicodeBlock", bundle: .module)
        case "Ancient Symbols": String(localized: "Ancient Symbols", table: "UnicodeBlock", bundle: .module)
        case "Arabic Extended-A": String(localized: "Arabic Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Arabic Extended-B": String(localized: "Arabic Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Arabic Extended-C": String(localized: "Arabic Extended-C", table: "UnicodeBlock", bundle: .module)
        case "Arabic Mathematical Alphabetic Symbols": String(localized: "Arabic Math Alphabetic Symbols", table: "UnicodeBlock", bundle: .module)  // Math -> Mathematical
        case "Arabic Presentation Forms-A": String(localized: "Arabic Presentation Forms-A", table: "UnicodeBlock", bundle: .module)
        case "Arabic Presentation Forms-B": String(localized: "Arabic Presentation Forms-B", table: "UnicodeBlock", bundle: .module)
        case "Arabic Supplement": String(localized: "Arabic Supplement", table: "UnicodeBlock", bundle: .module)
        case "Arabic": String(localized: "Arabic", table: "UnicodeBlock", bundle: .module)
        case "Armenian": String(localized: "Armenian", table: "UnicodeBlock", bundle: .module)
        case "Arrows": String(localized: "Arrows", table: "UnicodeBlock", bundle: .module)
        case "Avestan": String(localized: "Avestan", table: "UnicodeBlock", bundle: .module)
        case "Balinese": String(localized: "Balinese", table: "UnicodeBlock", bundle: .module)
        case "Bamum Supplement": String(localized: "Bamum Supplement", table: "UnicodeBlock", bundle: .module)
        case "Bamum": String(localized: "Bamum", table: "UnicodeBlock", bundle: .module)
        case "Basic Latin": String(localized: "Basic Latin", table: "UnicodeBlock", bundle: .module)
        case "Bassa Vah": String(localized: "Bassa Vah", table: "UnicodeBlock", bundle: .module)
        case "Batak": String(localized: "Batak", table: "UnicodeBlock", bundle: .module)
        case "Bengali": String(localized: "Bengali", table: "UnicodeBlock", bundle: .module)
        case "Bhaiksuki": String(localized: "Bhaiksuki", table: "UnicodeBlock", bundle: .module)
        case "Block Elements": String(localized: "Block Elements", table: "UnicodeBlock", bundle: .module)
        case "Bopomofo Extended": String(localized: "Bopomofo Extended", table: "UnicodeBlock", bundle: .module)
        case "Bopomofo": String(localized: "Bopomofo", table: "UnicodeBlock", bundle: .module)
        case "Box Drawing": String(localized: "Box Drawing", table: "UnicodeBlock", bundle: .module)
        case "Brahmi": String(localized: "Brahmi", table: "UnicodeBlock", bundle: .module)
        case "Braille Patterns": String(localized: "Braille Patterns", table: "UnicodeBlock", bundle: .module)
        case "Buginese": String(localized: "Buginese", table: "UnicodeBlock", bundle: .module)
        case "Buhid": String(localized: "Buhid", table: "UnicodeBlock", bundle: .module)
        case "Byzantine Musical Symbols": String(localized: "Byzantine Musical Symbols", table: "UnicodeBlock", bundle: .module)
        case "Carian": String(localized: "Carian", table: "UnicodeBlock", bundle: .module)
        case "Caucasian Albanian": String(localized: "Caucasian Albanian", table: "UnicodeBlock", bundle: .module)
        case "Chakma": String(localized: "Chakma", table: "UnicodeBlock", bundle: .module)
        case "Cham": String(localized: "Cham", table: "UnicodeBlock", bundle: .module)
        case "Cherokee Supplement": String(localized: "Cherokee Supplement", table: "UnicodeBlock", bundle: .module)
        case "Cherokee": String(localized: "Cherokee", table: "UnicodeBlock", bundle: .module)
        case "Chess Symbols": String(localized: "Chess Symbols", table: "UnicodeBlock", bundle: .module)
        case "Chorasmian": String(localized: "Chorasmian", table: "UnicodeBlock", bundle: .module)
        case "CJK Compatibility Forms": String(localized: "CJK Compatibility Forms", table: "UnicodeBlock", bundle: .module)
        case "CJK Compatibility Ideographs Supplement": String(localized: "CJK Compatibility Ideographs Supp.", table: "UnicodeBlock", bundle: .module)
        case "CJK Compatibility Ideographs": String(localized: "CJK Compatibility Ideographs", table: "UnicodeBlock", bundle: .module)
        case "CJK Compatibility": String(localized: "CJK Compatibility", table: "UnicodeBlock", bundle: .module)
        case "CJK Radicals Supplement": String(localized: "CJK Radicals Supplement", table: "UnicodeBlock", bundle: .module)
        case "CJK Strokes": String(localized: "CJK Strokes", table: "UnicodeBlock", bundle: .module)
        case "CJK Symbols and Punctuation": String(localized: "CJK Symbols and Punctuation", table: "UnicodeBlock", bundle: .module)
        case "CJK Unified Ideographs Extension A": String(localized: "CJK Unified Ideographs Ext. A", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension B": String(localized: "CJK Unified Ideographs Ext. B", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension C": String(localized: "CJK Unified Ideographs Ext. C", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension D": String(localized: "CJK Unified Ideographs Ext. D", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension E": String(localized: "CJK Unified Ideographs Ext. E", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension F": String(localized: "CJK Unified Ideographs Ext. F", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension G": String(localized: "CJK Unified Ideographs Ext. G", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension H": String(localized: "CJK Unified Ideographs Ext. H", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs Extension I": String(localized: "CJK Unified Ideographs Ext. I", table: "UnicodeBlock", bundle: .module)  // Extension -> Ext.
        case "CJK Unified Ideographs": String(localized: "CJK Unified Ideographs", table: "UnicodeBlock", bundle: .module)
        case "Combining Diacritical Marks Extended": String(localized: "Combining Diacritical Marks Extended", table: "UnicodeBlock", bundle: .module)
        case "Combining Diacritical Marks for Symbols": String(localized: "Combining Diacritical Marks for Symbols", table: "UnicodeBlock", bundle: .module)
        case "Combining Diacritical Marks Supplement": String(localized: "Combining Diacritical Marks Supplement", table: "UnicodeBlock", bundle: .module)
        case "Combining Diacritical Marks": String(localized: "Combining Diacritical Marks", table: "UnicodeBlock", bundle: .module)
        case "Combining Half Marks": String(localized: "Combining Half Marks", table: "UnicodeBlock", bundle: .module)
        case "Common Indic Number Forms": String(localized: "Common Indic Number Forms", table: "UnicodeBlock", bundle: .module)
        case "Control Pictures": String(localized: "Control Pictures", table: "UnicodeBlock", bundle: .module)
        case "Coptic Epact Numbers": String(localized: "Coptic Epact Numbers", table: "UnicodeBlock", bundle: .module)
        case "Coptic": String(localized: "Coptic", table: "UnicodeBlock", bundle: .module)
        case "Counting Rod Numerals": String(localized: "Counting Rod Numerals", table: "UnicodeBlock", bundle: .module)
        case "Cuneiform Numbers and Punctuation": String(localized: "Cuneiform Numbers and Punctuation", table: "UnicodeBlock", bundle: .module)
        case "Cuneiform": String(localized: "Cuneiform", table: "UnicodeBlock", bundle: .module)
        case "Currency Symbols": String(localized: "Currency Symbols", table: "UnicodeBlock", bundle: .module)
        case "Cypriot Syllabary": String(localized: "Cypriot Syllabary", table: "UnicodeBlock", bundle: .module)
        case "Cypro-Minoan": String(localized: "Cypro-Minoan", table: "UnicodeBlock", bundle: .module)
        case "Cyrillic Extended-A": String(localized: "Cyrillic Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Cyrillic Extended-B": String(localized: "Cyrillic Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Cyrillic Extended-C": String(localized: "Cyrillic Extended-C", table: "UnicodeBlock", bundle: .module)
        case "Cyrillic Extended-D": String(localized: "Cyrillic Extended-D", table: "UnicodeBlock", bundle: .module)
        case "Cyrillic Supplement": String(localized: "Cyrillic Supplement", table: "UnicodeBlock", bundle: .module)
        case "Cyrillic": String(localized: "Cyrillic", table: "UnicodeBlock", bundle: .module)
        case "Deseret": String(localized: "Deseret", table: "UnicodeBlock", bundle: .module)
        case "Devanagari Extended-A": String(localized: "Devanagari Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Devanagari Extended": String(localized: "Devanagari Extended", table: "UnicodeBlock", bundle: .module)
        case "Devanagari": String(localized: "Devanagari", table: "UnicodeBlock", bundle: .module)
        case "Dingbats": String(localized: "Dingbats", table: "UnicodeBlock", bundle: .module)
        case "Dives Akuru": String(localized: "Dives Akuru", table: "UnicodeBlock", bundle: .module)
        case "Dogra": String(localized: "Dogra", table: "UnicodeBlock", bundle: .module)
        case "Domino Tiles": String(localized: "Domino Tiles", table: "UnicodeBlock", bundle: .module)
        case "Duployan": String(localized: "Duployan", table: "UnicodeBlock", bundle: .module)
        case "Early Dynastic Cuneiform": String(localized: "Early Dynastic Cuneiform", table: "UnicodeBlock", bundle: .module)
        case "Egyptian Hieroglyph Format Controls": String(localized: "Egyptian Hieroglyph Format Controls", table: "UnicodeBlock", bundle: .module)
        case "Egyptian Hieroglyphs Extended-A": String(localized: "Egyptian Hieroglyphs Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Egyptian Hieroglyphs": String(localized: "Egyptian Hieroglyphs", table: "UnicodeBlock", bundle: .module)
        case "Elbasan": String(localized: "Elbasan", table: "UnicodeBlock", bundle: .module)
        case "Elymaic": String(localized: "Elymaic", table: "UnicodeBlock", bundle: .module)
        case "Emoticons": String(localized: "Emoticons", table: "UnicodeBlock", bundle: .module)
        case "Enclosed Alphanumeric Supplement": String(localized: "Enclosed Alphanumeric Supplement", table: "UnicodeBlock", bundle: .module)
        case "Enclosed Alphanumerics": String(localized: "Enclosed Alphanumerics", table: "UnicodeBlock", bundle: .module)
        case "Enclosed CJK Letters and Months": String(localized: "Enclosed CJK Letters and Months", table: "UnicodeBlock", bundle: .module)
        case "Enclosed Ideographic Supplement": String(localized: "Enclosed Ideographic Supplement", table: "UnicodeBlock", bundle: .module)
        case "Ethiopic Extended-A": String(localized: "Ethiopic Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Ethiopic Extended-B": String(localized: "Ethiopic Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Ethiopic Extended": String(localized: "Ethiopic Extended", table: "UnicodeBlock", bundle: .module)
        case "Ethiopic Supplement": String(localized: "Ethiopic Supplement", table: "UnicodeBlock", bundle: .module)
        case "Ethiopic": String(localized: "Ethiopic", table: "UnicodeBlock", bundle: .module)
        case "Garay": String(localized: "Garay", table: "UnicodeBlock", bundle: .module)
        case "General Punctuation": String(localized: "General Punctuation", table: "UnicodeBlock", bundle: .module)
        case "Geometric Shapes Extended": String(localized: "Geometric Shapes Extended", table: "UnicodeBlock", bundle: .module)
        case "Geometric Shapes": String(localized: "Geometric Shapes", table: "UnicodeBlock", bundle: .module)
        case "Georgian Extended": String(localized: "Georgian Extended", table: "UnicodeBlock", bundle: .module)
        case "Georgian Supplement": String(localized: "Georgian Supplement", table: "UnicodeBlock", bundle: .module)
        case "Georgian": String(localized: "Georgian", table: "UnicodeBlock", bundle: .module)
        case "Glagolitic Supplement": String(localized: "Glagolitic Supplement", table: "UnicodeBlock", bundle: .module)
        case "Glagolitic": String(localized: "Glagolitic", table: "UnicodeBlock", bundle: .module)
        case "Gothic": String(localized: "Gothic", table: "UnicodeBlock", bundle: .module)
        case "Grantha": String(localized: "Grantha", table: "UnicodeBlock", bundle: .module)
        case "Greek and Coptic": String(localized: "Greek and Coptic", table: "UnicodeBlock", bundle: .module)
        case "Greek Extended": String(localized: "Greek Extended", table: "UnicodeBlock", bundle: .module)
        case "Gujarati": String(localized: "Gujarati", table: "UnicodeBlock", bundle: .module)
        case "Gunjala Gondi": String(localized: "Gunjala Gondi", table: "UnicodeBlock", bundle: .module)
        case "Gurmukhi": String(localized: "Gurmukhi", table: "UnicodeBlock", bundle: .module)
        case "Gurung Khema": String(localized: "Gurung Khema", table: "UnicodeBlock", bundle: .module)
        case "Halfwidth and Fullwidth Forms": String(localized: "Halfwidth and Fullwidth Forms", table: "UnicodeBlock", bundle: .module)
        case "Hangul Compatibility Jamo": String(localized: "Hangul Compatibility Jamo", table: "UnicodeBlock", bundle: .module)
        case "Hangul Jamo Extended-A": String(localized: "Hangul Jamo Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Hangul Jamo Extended-B": String(localized: "Hangul Jamo Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Hangul Jamo": String(localized: "Hangul Jamo", table: "UnicodeBlock", bundle: .module)
        case "Hangul Syllables": String(localized: "Hangul Syllables", table: "UnicodeBlock", bundle: .module)
        case "Hanifi Rohingya": String(localized: "Hanifi Rohingya", table: "UnicodeBlock", bundle: .module)
        case "Hanunoo": String(localized: "Hanunoo", table: "UnicodeBlock", bundle: .module)
        case "Hatran": String(localized: "Hatran", table: "UnicodeBlock", bundle: .module)
        case "Hebrew": String(localized: "Hebrew", table: "UnicodeBlock", bundle: .module)
        case "High Private Use Surrogates": String(localized: "High Private Use Surrogates", table: "UnicodeBlock", bundle: .module)
        case "High Surrogates": String(localized: "High Surrogates", table: "UnicodeBlock", bundle: .module)
        case "Hiragana": String(localized: "Hiragana", table: "UnicodeBlock", bundle: .module)
        case "Ideographic Description Characters": String(localized: "Ideographic Desc. Characters", table: "UnicodeBlock", bundle: .module)
        case "Ideographic Symbols and Punctuation": String(localized: "Ideographic Symbols and Punctuation", table: "UnicodeBlock", bundle: .module)
        case "Imperial Aramaic": String(localized: "Imperial Aramaic", table: "UnicodeBlock", bundle: .module)
        case "Indic Siyaq Numbers": String(localized: "Indic Siyaq Numbers", table: "UnicodeBlock", bundle: .module)
        case "Inscriptional Pahlavi": String(localized: "Inscriptional Pahlavi", table: "UnicodeBlock", bundle: .module)
        case "Inscriptional Parthian": String(localized: "Inscriptional Parthian", table: "UnicodeBlock", bundle: .module)
        case "IPA Extensions": String(localized: "IPA Extensions", table: "UnicodeBlock", bundle: .module)
        case "Javanese": String(localized: "Javanese", table: "UnicodeBlock", bundle: .module)
        case "Kaithi": String(localized: "Kaithi", table: "UnicodeBlock", bundle: .module)
        case "Kaktovik Numerals": String(localized: "Kaktovik Numerals", table: "UnicodeBlock", bundle: .module)
        case "Kana Extended-A": String(localized: "Kana Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Kana Extended-B": String(localized: "Kana Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Kana Supplement": String(localized: "Kana Supplement", table: "UnicodeBlock", bundle: .module)
        case "Kanbun": String(localized: "Kanbun", table: "UnicodeBlock", bundle: .module)
        case "Kangxi Radicals": String(localized: "Kangxi Radicals", table: "UnicodeBlock", bundle: .module)
        case "Kannada": String(localized: "Kannada", table: "UnicodeBlock", bundle: .module)
        case "Katakana Phonetic Extensions": String(localized: "Katakana Phonetic Extensions", table: "UnicodeBlock", bundle: .module)
        case "Katakana": String(localized: "Katakana", table: "UnicodeBlock", bundle: .module)
        case "Kawi": String(localized: "Kawi", table: "UnicodeBlock", bundle: .module)
        case "Kayah Li": String(localized: "Kayah Li", table: "UnicodeBlock", bundle: .module)
        case "Kharoshthi": String(localized: "Kharoshthi", table: "UnicodeBlock", bundle: .module)
        case "Khitan Small Script": String(localized: "Khitan Small Script", table: "UnicodeBlock", bundle: .module)
        case "Khmer Symbols": String(localized: "Khmer Symbols", table: "UnicodeBlock", bundle: .module)
        case "Khmer": String(localized: "Khmer", table: "UnicodeBlock", bundle: .module)
        case "Khojki": String(localized: "Khojki", table: "UnicodeBlock", bundle: .module)
        case "Khudawadi": String(localized: "Khudawadi", table: "UnicodeBlock", bundle: .module)
        case "Kirat Rai": String(localized: "Kirat Rai", table: "UnicodeBlock", bundle: .module)
        case "Lao": String(localized: "Lao", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended Additional": String(localized: "Latin Extended Additional", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-A": String(localized: "Latin Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-B": String(localized: "Latin Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-C": String(localized: "Latin Extended-C", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-D": String(localized: "Latin Extended-D", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-E": String(localized: "Latin Extended-E", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-F": String(localized: "Latin Extended-F", table: "UnicodeBlock", bundle: .module)
        case "Latin Extended-G": String(localized: "Latin Extended-G", table: "UnicodeBlock", bundle: .module)
        case "Latin-1 Supplement": String(localized: "Latin-1 Supplement", table: "UnicodeBlock", bundle: .module)
        case "Lepcha": String(localized: "Lepcha", table: "UnicodeBlock", bundle: .module)
        case "Letterlike Symbols": String(localized: "Letterlike Symbols", table: "UnicodeBlock", bundle: .module)
        case "Limbu": String(localized: "Limbu", table: "UnicodeBlock", bundle: .module)
        case "Linear A": String(localized: "Linear A", table: "UnicodeBlock", bundle: .module)
        case "Linear B Ideograms": String(localized: "Linear B Ideograms", table: "UnicodeBlock", bundle: .module)
        case "Linear B Syllabary": String(localized: "Linear B Syllabary", table: "UnicodeBlock", bundle: .module)
        case "Lisu Supplement": String(localized: "Lisu Supplement", table: "UnicodeBlock", bundle: .module)
        case "Lisu": String(localized: "Lisu", table: "UnicodeBlock", bundle: .module)
        case "Low Surrogates": String(localized: "Low Surrogates", table: "UnicodeBlock", bundle: .module)
        case "Lycian": String(localized: "Lycian", table: "UnicodeBlock", bundle: .module)
        case "Lydian": String(localized: "Lydian", table: "UnicodeBlock", bundle: .module)
        case "Mahajani": String(localized: "Mahajani", table: "UnicodeBlock", bundle: .module)
        case "Mahjong Tiles": String(localized: "Mahjong Tiles", table: "UnicodeBlock", bundle: .module)
        case "Makasar": String(localized: "Makasar", table: "UnicodeBlock", bundle: .module)
        case "Malayalam": String(localized: "Malayalam", table: "UnicodeBlock", bundle: .module)
        case "Mandaic": String(localized: "Mandaic", table: "UnicodeBlock", bundle: .module)
        case "Manichaean": String(localized: "Manichaean", table: "UnicodeBlock", bundle: .module)
        case "Marchen": String(localized: "Marchen", table: "UnicodeBlock", bundle: .module)
        case "Masaram Gondi": String(localized: "Masaram Gondi", table: "UnicodeBlock", bundle: .module)
        case "Mathematical Alphanumeric Symbols": String(localized: "Math Alphanumeric Symbols", table: "UnicodeBlock", bundle: .module)  // Math -> Mathematical
        case "Mathematical Operators": String(localized: "Mathematical Operators", table: "UnicodeBlock", bundle: .module)
        case "Mayan Numerals": String(localized: "Mayan Numerals", table: "UnicodeBlock", bundle: .module)
        case "Medefaidrin": String(localized: "Medefaidrin", table: "UnicodeBlock", bundle: .module)
        case "Meetei Mayek Extensions": String(localized: "Meetei Mayek Extensions", table: "UnicodeBlock", bundle: .module)
        case "Meetei Mayek": String(localized: "Meetei Mayek", table: "UnicodeBlock", bundle: .module)
        case "Mende Kikakui": String(localized: "Mende Kikakui", table: "UnicodeBlock", bundle: .module)
        case "Meroitic Cursive": String(localized: "Meroitic Cursive", table: "UnicodeBlock", bundle: .module)
        case "Meroitic Hieroglyphs": String(localized: "Meroitic Hieroglyphs", table: "UnicodeBlock", bundle: .module)
        case "Miao": String(localized: "Miao", table: "UnicodeBlock", bundle: .module)
        case "Miscellaneous Mathematical Symbols-A": String(localized: "Miscellaneous Math Symbols-A", table: "UnicodeBlock", bundle: .module)  // Math -> Mathematical
        case "Miscellaneous Mathematical Symbols-B": String(localized: "Miscellaneous Math Symbols-B", table: "UnicodeBlock", bundle: .module)  // Math -> Mathematical
        case "Miscellaneous Symbols and Arrows": String(localized: "Miscellaneous Symbols and Arrows", table: "UnicodeBlock", bundle: .module)
        case "Miscellaneous Symbols and Pictographs": String(localized: "Miscellaneous Symbols And Pictographs", table: "UnicodeBlock", bundle: .module)  // And -> and
        case "Miscellaneous Symbols": String(localized: "Miscellaneous Symbols", table: "UnicodeBlock", bundle: .module)
        case "Miscellaneous Technical": String(localized: "Miscellaneous Technical", table: "UnicodeBlock", bundle: .module)
        case "Modi": String(localized: "Modi", table: "UnicodeBlock", bundle: .module)
        case "Modifier Tone Letters": String(localized: "Modifier Tone Letters", table: "UnicodeBlock", bundle: .module)
        case "Mongolian Supplement": String(localized: "Mongolian Supplement", table: "UnicodeBlock", bundle: .module)
        case "Mongolian": String(localized: "Mongolian", table: "UnicodeBlock", bundle: .module)
        case "Mro": String(localized: "Mro", table: "UnicodeBlock", bundle: .module)
        case "Multani": String(localized: "Multani", table: "UnicodeBlock", bundle: .module)
        case "Musical Symbols": String(localized: "Musical Symbols", table: "UnicodeBlock", bundle: .module)
        case "Myanmar Extended-A": String(localized: "Myanmar Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Myanmar Extended-B": String(localized: "Myanmar Extended-B", table: "UnicodeBlock", bundle: .module)
        case "Myanmar Extended-C": String(localized: "Myanmar Extended-C", table: "UnicodeBlock", bundle: .module)
        case "Myanmar": String(localized: "Myanmar", table: "UnicodeBlock", bundle: .module)
        case "Nabataean": String(localized: "Nabataean", table: "UnicodeBlock", bundle: .module)
        case "Nag Mundari": String(localized: "Nag Mundari", table: "UnicodeBlock", bundle: .module)
        case "Nandinagari": String(localized: "Nandinagari", table: "UnicodeBlock", bundle: .module)
        case "New Tai Lue": String(localized: "New Tai Lue", table: "UnicodeBlock", bundle: .module)
        case "Newa": String(localized: "Newa", table: "UnicodeBlock", bundle: .module)
        case "NKo": String(localized: "N'Ko", table: "UnicodeBlock", bundle: .module)  // remove ’
        case "Number Forms": String(localized: "Number Forms", table: "UnicodeBlock", bundle: .module)
        case "Nushu": String(localized: "Nushu", table: "UnicodeBlock", bundle: .module)
        case "Nyiakeng Puachue Hmong": String(localized: "Nyiakeng Puachue Hmong", table: "UnicodeBlock", bundle: .module)
        case "Ogham": String(localized: "Ogham", table: "UnicodeBlock", bundle: .module)
        case "Ol Chiki": String(localized: "Ol Chiki", table: "UnicodeBlock", bundle: .module)
        case "Ol Onal": String(localized: "Ol Onal", table: "UnicodeBlock", bundle: .module)
        case "Old Hungarian": String(localized: "Old Hungarian", table: "UnicodeBlock", bundle: .module)
        case "Old Italic": String(localized: "Old Italic", table: "UnicodeBlock", bundle: .module)
        case "Old North Arabian": String(localized: "Old North Arabian", table: "UnicodeBlock", bundle: .module)
        case "Old Permic": String(localized: "Old Permic", table: "UnicodeBlock", bundle: .module)
        case "Old Persian": String(localized: "Old Persian", table: "UnicodeBlock", bundle: .module)
        case "Old Sogdian": String(localized: "Old Sogdian", table: "UnicodeBlock", bundle: .module)
        case "Old South Arabian": String(localized: "Old South Arabian", table: "UnicodeBlock", bundle: .module)
        case "Old Turkic": String(localized: "Old Turkic", table: "UnicodeBlock", bundle: .module)
        case "Old Uyghur": String(localized: "Old Uyghur", table: "UnicodeBlock", bundle: .module)
        case "Optical Character Recognition": String(localized: "Optical Character Recognition", table: "UnicodeBlock", bundle: .module)
        case "Oriya": String(localized: "Oriya", table: "UnicodeBlock", bundle: .module)
        case "Ornamental Dingbats": String(localized: "Ornamental Dingbats", table: "UnicodeBlock", bundle: .module)
        case "Osage": String(localized: "Osage", table: "UnicodeBlock", bundle: .module)
        case "Osmanya": String(localized: "Osmanya", table: "UnicodeBlock", bundle: .module)
        case "Ottoman Siyaq Numbers": String(localized: "Ottoman Siyaq Numbers", table: "UnicodeBlock", bundle: .module)
        case "Pahawh Hmong": String(localized: "Pahawh Hmong", table: "UnicodeBlock", bundle: .module)
        case "Palmyrene": String(localized: "Palmyrene", table: "UnicodeBlock", bundle: .module)
        case "Pau Cin Hau": String(localized: "Pau Cin Hau", table: "UnicodeBlock", bundle: .module)
        case "Phags-pa": String(localized: "Phags-pa", table: "UnicodeBlock", bundle: .module)
        case "Phaistos Disc": String(localized: "Phaistos Disc", table: "UnicodeBlock", bundle: .module)
        case "Phoenician": String(localized: "Phoenician", table: "UnicodeBlock", bundle: .module)
        case "Phonetic Extensions Supplement": String(localized: "Phonetic Extensions Supplement", table: "UnicodeBlock", bundle: .module)
        case "Phonetic Extensions": String(localized: "Phonetic Extensions", table: "UnicodeBlock", bundle: .module)
        case "Playing Cards": String(localized: "Playing Cards", table: "UnicodeBlock", bundle: .module)
        case "Private Use Area": String(localized: "Private Use Area", table: "UnicodeBlock", bundle: .module)
        case "Psalter Pahlavi": String(localized: "Psalter Pahlavi", table: "UnicodeBlock", bundle: .module)
        case "Rejang": String(localized: "Rejang", table: "UnicodeBlock", bundle: .module)
        case "Rumi Numeral Symbols": String(localized: "Rumi Numeral Symbols", table: "UnicodeBlock", bundle: .module)
        case "Runic": String(localized: "Runic", table: "UnicodeBlock", bundle: .module)
        case "Samaritan": String(localized: "Samaritan", table: "UnicodeBlock", bundle: .module)
        case "Saurashtra": String(localized: "Saurashtra", table: "UnicodeBlock", bundle: .module)
        case "Sharada": String(localized: "Sharada", table: "UnicodeBlock", bundle: .module)
        case "Shavian": String(localized: "Shavian", table: "UnicodeBlock", bundle: .module)
        case "Shorthand Format Controls": String(localized: "Shorthand Format Controls", table: "UnicodeBlock", bundle: .module)
        case "Siddham": String(localized: "Siddham", table: "UnicodeBlock", bundle: .module)
        case "Sinhala Archaic Numbers": String(localized: "Sinhala Archaic Numbers", table: "UnicodeBlock", bundle: .module)
        case "Sinhala": String(localized: "Sinhala", table: "UnicodeBlock", bundle: .module)
        case "Small Form Variants": String(localized: "Small Form Variants", table: "UnicodeBlock", bundle: .module)
        case "Small Kana Extension": String(localized: "Small Kana Extension", table: "UnicodeBlock", bundle: .module)
        case "Sogdian": String(localized: "Sogdian", table: "UnicodeBlock", bundle: .module)
        case "Sora Sompeng": String(localized: "Sora Sompeng", table: "UnicodeBlock", bundle: .module)
        case "Soyombo": String(localized: "Soyombo", table: "UnicodeBlock", bundle: .module)
        case "Spacing Modifier Letters": String(localized: "Spacing Modifier Letters", table: "UnicodeBlock", bundle: .module)
        case "Specials": String(localized: "Specials", table: "UnicodeBlock", bundle: .module)
        case "Sundanese Supplement": String(localized: "Sundanese Supplement", table: "UnicodeBlock", bundle: .module)
        case "Sundanese": String(localized: "Sundanese", table: "UnicodeBlock", bundle: .module)
        case "Sunuwar": String(localized: "Sunuwar", table: "UnicodeBlock", bundle: .module)
        case "Superscripts and Subscripts": String(localized: "Superscripts and Subscripts", table: "UnicodeBlock", bundle: .module)
        case "Supplemental Arrows-A": String(localized: "Supplemental Arrows-A", table: "UnicodeBlock", bundle: .module)
        case "Supplemental Arrows-B": String(localized: "Supplemental Arrows-B", table: "UnicodeBlock", bundle: .module)
        case "Supplemental Arrows-C": String(localized: "Supplemental Arrows-C", table: "UnicodeBlock", bundle: .module)
        case "Supplemental Mathematical Operators": String(localized: "Supplemental Math Operators", table: "UnicodeBlock", bundle: .module)  // Math -> Mathematical
        case "Supplemental Punctuation": String(localized: "Supplemental Punctuation", table: "UnicodeBlock", bundle: .module)
        case "Supplemental Symbols and Pictographs": String(localized: "Supplemental Symbols and Pictographs", table: "UnicodeBlock", bundle: .module)
        case "Supplementary Private Use Area-A": String(localized: "Supplementary Private Use Area-A", table: "UnicodeBlock", bundle: .module)
        case "Supplementary Private Use Area-B": String(localized: "Supplementary Private Use Area-B", table: "UnicodeBlock", bundle: .module)
        case "Sutton SignWriting": String(localized: "Sutton SignWriting", table: "UnicodeBlock", bundle: .module)
        case "Syloti Nagri": String(localized: "Syloti Nagri", table: "UnicodeBlock", bundle: .module)
        case "Symbols and Pictographs Extended-A": String(localized: "Symbols and Pictographs Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Symbols for Legacy Computing Supplement": String(localized: "Symbols for Legacy Computing Supplement", table: "UnicodeBlock", bundle: .module)
        case "Symbols for Legacy Computing": String(localized: "Symbols for Legacy Computing", table: "UnicodeBlock", bundle: .module)
        case "Syriac Supplement": String(localized: "Syriac Supplement", table: "UnicodeBlock", bundle: .module)
        case "Syriac": String(localized: "Syriac", table: "UnicodeBlock", bundle: .module)
        case "Tagalog": String(localized: "Tagalog", table: "UnicodeBlock", bundle: .module)
        case "Tagbanwa": String(localized: "Tagbanwa", table: "UnicodeBlock", bundle: .module)
        case "Tags": String(localized: "Tags", table: "UnicodeBlock", bundle: .module)
        case "Tai Le": String(localized: "Tai Le", table: "UnicodeBlock", bundle: .module)
        case "Tai Tham": String(localized: "Tai Tham", table: "UnicodeBlock", bundle: .module)
        case "Tai Viet": String(localized: "Tai Viet", table: "UnicodeBlock", bundle: .module)
        case "Tai Xuan Jing Symbols": String(localized: "Tai Xuan Jing Symbols", table: "UnicodeBlock", bundle: .module)
        case "Takri": String(localized: "Takri", table: "UnicodeBlock", bundle: .module)
        case "Tamil Supplement": String(localized: "Tamil Supplement", table: "UnicodeBlock", bundle: .module)
        case "Tamil": String(localized: "Tamil", table: "UnicodeBlock", bundle: .module)
        case "Tangsa": String(localized: "Tangsa", table: "UnicodeBlock", bundle: .module)
        case "Tangut Components": String(localized: "Tangut Components", table: "UnicodeBlock", bundle: .module)
        case "Tangut Supplement": String(localized: "Tangut Supplement", table: "UnicodeBlock", bundle: .module)
        case "Tangut": String(localized: "Tangut", table: "UnicodeBlock", bundle: .module)
        case "Telugu": String(localized: "Telugu", table: "UnicodeBlock", bundle: .module)
        case "Thaana": String(localized: "Thaana", table: "UnicodeBlock", bundle: .module)
        case "Thai": String(localized: "Thai", table: "UnicodeBlock", bundle: .module)
        case "Tibetan": String(localized: "Tibetan", table: "UnicodeBlock", bundle: .module)
        case "Tifinagh": String(localized: "Tifinagh", table: "UnicodeBlock", bundle: .module)
        case "Tirhuta": String(localized: "Tirhuta", table: "UnicodeBlock", bundle: .module)
        case "Todhri": String(localized: "Todhri", table: "UnicodeBlock", bundle: .module)
        case "Toto": String(localized: "Toto", table: "UnicodeBlock", bundle: .module)
        case "Transport and Map Symbols": String(localized: "Transport And Map Symbols", table: "UnicodeBlock", bundle: .module)  // And -> and
        case "Tulu-Tigalari": String(localized: "Tulu-Tigalari", table: "UnicodeBlock", bundle: .module)
        case "Ugaritic": String(localized: "Ugaritic", table: "UnicodeBlock", bundle: .module)
        case "Unified Canadian Aboriginal Syllabics Extended-A": String(localized: "Unified Canadian Aboriginal Syllabics Extended-A", table: "UnicodeBlock", bundle: .module)
        case "Unified Canadian Aboriginal Syllabics Extended": String(localized: "Unified Canadian Aboriginal Syllabics Extended", table: "UnicodeBlock", bundle: .module)
        case "Unified Canadian Aboriginal Syllabics": String(localized: "Unified Canadian Aboriginal Syllabics", table: "UnicodeBlock", bundle: .module)
        case "Vai": String(localized: "Vai", table: "UnicodeBlock", bundle: .module)
        case "Variation Selectors Supplement": String(localized: "Variation Selectors Supplement", table: "UnicodeBlock", bundle: .module)
        case "Variation Selectors": String(localized: "Variation Selectors", table: "UnicodeBlock", bundle: .module)
        case "Vedic Extensions": String(localized: "Vedic Extensions", table: "UnicodeBlock", bundle: .module)
        case "Vertical Forms": String(localized: "Vertical Forms", table: "UnicodeBlock", bundle: .module)
        case "Vithkuqi": String(localized: "Vithkuqi", table: "UnicodeBlock", bundle: .module)
        case "Wancho": String(localized: "Wancho", table: "UnicodeBlock", bundle: .module)
        case "Warang Citi": String(localized: "Warang Citi", table: "UnicodeBlock", bundle: .module)
        case "Yezidi": String(localized: "Yezidi", table: "UnicodeBlock", bundle: .module)
        case "Yi Radicals": String(localized: "Yi Radicals", table: "UnicodeBlock", bundle: .module)
        case "Yi Syllables": String(localized: "Yi Syllables", table: "UnicodeBlock", bundle: .module)
        case "Yijing Hexagram Symbols": String(localized: "Yijing Hexagram Symbols", table: "UnicodeBlock", bundle: .module)
        case "Zanabazar Square": String(localized: "Zanabazar Square", table: "UnicodeBlock", bundle: .module)
        case "Znamenny Musical Notation": String(localized: "Znamenny Musical Notation", table: "UnicodeBlock", bundle: .module)
            
        default: nil
    }
}
