
#import <Foundation/Foundation.h>

@interface SomeThing : NSObject

+ (void) print;

@end

@implementation SomeThing 

+ (void) print {
	NSLog(@"Hello, world!");
}

@end

int salut() {

	return 1;
}

int main( int argc , char * argv[] ) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	id a = [[SomeThing alloc] init];

	@try {
		[a muhahah];
	}
	@catch ( NSException * exception ) {
		NSLog(@"Caught %@ MMMM %@", [exception name], [exception reason]);
	}

	NSLog(@"Inca merge");
	[a release];

	[pool drain];

	return 0;
}