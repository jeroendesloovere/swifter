//
//  Dictionary+Swifter.swift
//  Swifter
//
//  Copyright (c) 2014 Matt Donnelly.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension Dictionary {

    func join(other: Dictionary) -> Dictionary {
        var map = Dictionary()

        for (key, value) in self {
            map.updateValue(value, forKey: key)
        }

        for (key, value) in other {
            map.updateValue(value, forKey: key)
        }

        return map
    }

    func urlEncodedString(encoding: NSStringEncoding) -> String {
        var parts = String[]()

        for (key, value) in self {
            let keyString = "\(key)".stringByAddingPercentEscapesUsingEncoding(encoding)
            let valueString = "\(value)".stringByAddingPercentEscapesUsingEncoding(encoding)
            let query = "\(keyString)=\(valueString)" as String
            parts.append(query)
        }

        return parts.bridgeToObjectiveC().componentsJoinedByString("&") as String
    }
    
}