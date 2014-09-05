//
//  AppDelegate.swift
//  rtl-override
//
//  2014 by Sven-S. Porst <ssp-web@earthlingsoft.net>
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
 
	let testString = "\u{062a}\u{0627}\u{0628}\u{0650}\u{0639}\u{202d}@WDLorg\u{202c}"
	dynamic var pasteboardString: String?
	var pastedString: String?
	
	func applicationDidFinishLaunching(notification: NSNotification!) {
		NSNotificationCenter.defaultCenter().addObserverForName("clipboardChanged", object:nil, queue:nil) {
			notification in
			self.updatePasteboardString()
		}
	}

	func applicationWillBecomeActive(notification: NSNotification!) {
		self.updatePasteboardString()
	}
	
	func updatePasteboardString() {
		let newPasteboardString = NSPasteboard.generalPasteboard().stringForType(NSPasteboardTypeString)
		if newPasteboardString != pasteboardString {
			self.pasteboardString = newPasteboardString
		}
	}
	
	@IBAction func testStringToPasteboard(sender: AnyObject) {
		let pb = NSPasteboard.generalPasteboard()
		pb.clearContents()
		pb.declareTypes([NSPasteboardTypeString], owner:self)
		pb.setString(testString, forType:NSPasteboardTypeString)
		self.updatePasteboardString()
	}

}
