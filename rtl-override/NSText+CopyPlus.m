//
//  NSText+CopyPlus.m
//  rtl-override
//
//  2014 by Sven-S. Porst <ssp-web@earthlingsoft.net>
//

#import "NSText+CopyPlus.h"

@implementation NSText (CopyPlus)

- (void) copyPlus:(NSObject *)sender {
	[self copy:sender];
	[[NSNotificationCenter defaultCenter]  postNotificationName:@"clipboardChanged" object:self];
}
@end
