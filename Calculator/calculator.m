
#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
	double accumulator;
}

- (double) accumulator;
- (double) setAccumulator : (double) acc;
- (double) add : (double) number;
- (double) substract : (double) number;
- (double) multiply: (double) number;
- (double) divide: (double) number;
- (double) clear;

@end

@implementation Calculator

- (double) accumulator {
	return accumulator;
}

- (double) setAccumulator : (double) acc {
	accumulator = acc;
	return accumulator;
}

- (double) add : (double) number {
	accumulator += number;
	return accumulator;
}

- (double) substract : (double) number {
	accumulator -= number;
	return accumulator;
}

- (double) multiply: (double) number {
	accumulator *= number;
	return accumulator;
}

- (double) divide: (double) number {
	accumulator /= number;
	return accumulator;
}

- (double) clear {
	accumulator = 0;
	return accumulator;
}

@end

int main( int argc, char * argv[] ) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Calculator * calc = [[Calculator alloc] init];

	[calc clear];
	int sum = [calc multiply: [calc add: 10]];

	NSLog(@"Result: %d", sum);

	int i;
	[calc clear];
	for ( i = 1; i <= 100; ++ i ) 
	#{
		[calc add: i];
	}

	NSLog(@"Result: %d", [calc accumulator]);

	[calc release];

	[pool drain];

	return 0;
}