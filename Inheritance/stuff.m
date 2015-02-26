
#import <Foundation/Foundation.h>

@interface ClassA : NSObject 
{
	int x;
}

- (void) initVar;

@end

@implementation ClassA 


- (void) initVar {
	x  = 100;
}

@end

@interface ClassB : ClassA

-(void) printVar;
@end

@implementation ClassB 

- (void) printVar {
	NSLog(@"%d\n", x);
}

@end

int main( int argc, char * argv[] ) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	ClassB * c = [[ClassB alloc] init];

	[c initVar];
	[c printVar];

	[pool drain];

	return 0;
}