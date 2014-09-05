// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let pb = NSPasteboard.generalPasteboard()
pb.types
pb.changeCount
pb.name

let textData = pb.dataForType("public.utf8-plain-text")
textData.bytes
let s = NSString.init(data:textData, encoding:NSUTF8StringEncoding)
s.length
let sa = "\(s)"


var bytes = [NSString]()
for codeUnit in sa.utf8 {
	let hexString = NSString(format:"%2X", codeUnit)
	bytes.append(hexString)
}
println(bytes)


".".join(["1","2","3"])

pb.stringForType(NSPasteboardTypeString)

NSPasteboardTypeString

let testString = "\u{0052}"
