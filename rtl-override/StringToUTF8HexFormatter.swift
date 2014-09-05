//
//  StringToUTF8HexFormatter.swift
//  rtl-override
//
//  2014 by Sven-S. Porst <ssp-web@earthlingsoft.net>
//

import Foundation

class StringToUTF8HexFormatter: NSFormatter {
	override func stringForObjectValue(input: AnyObject!) -> String! {
		var hexStrings = [String]()
		for byte in "\(input)".utf8 {
			var hexString = NSString(format:"%X", byte)
			if hexString.length == 1 {
				hexString = "0" + hexString
			}
			hexStrings.append("\(hexString)")
		}
		
		return " ".join(hexStrings)
	}
}