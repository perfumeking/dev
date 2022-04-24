//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
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
import UIKit

/*:
 # Strings and Characters
 */












/*:
 ## String Types
 */
var nsstr: NSString = "str"

let swiftStr: String = nsstr as String

nsstr = swiftStr as NSString











/*:
 ## Mutability
 */
let imm = "str"
//immutableStr = "new str"
var mutableStr = "str"
mutableStr = "new str"

// 문자열을 변수로 생성하여 바꾸자















/*:
 ## Unicode
 */
let str = "Swift String"

str.utf8
str.utf16

var thumbUp = "👍"

thumbUp = "\u{1F44D}"
//
//😀
//활짝 웃는 얼굴
//유니코드: U+1F600, UTF-8: F0 9F 98 80










