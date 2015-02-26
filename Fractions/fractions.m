
#import <Foundation/Foundation.h>
#import "fraction.h"

@interface Fibonacci : NSObject 
{

}

+ (int) fibo: (int) n;

@end

@implementation Fibonacci 

+ (int) fibo : (int) n {
	if ( n <= 0 ) return 0;
	if ( n == 1 ) return 1;
	return [Fibonacci fibo: n - 1] + [Fibonacci fibo: n - 2];
}

@end

int main( int argc, const char * argv[] ) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Fraction * frac = [[Fraction alloc] init];
	Fraction * frac2 = [[Fraction alloc] init];

	[frac setTo: 3 over: 7];
	[frac print];

	[frac2 setTo: 1 over: 21];
	[frac2 print];

	[frac add: frac2];

	[frac print];

	[frac release];
	[pool drain];

	return 0;
}