
#import <Foundation/Foundation.h>

#import "ExpresionParser.h"

int main() {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	ExpresionParser * parser = [[ExpresionParser alloc] init];

	[parser parse: @"Salut"];

	[pool drain];
	return 0;
}