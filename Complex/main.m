
#import <Foundation/Foundation.h>

#import "complex.h"

int main( int argc, char * argv[]  ) {

	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Complex * a = [[Complex alloc] init];
	Complex * b = [[Complex alloc] init];

	[a setReal: 3.0 andImag: 5.0];
	[b setReal: 3.0 andImag: -5.0];

	[a print]; 
	[b print];

	Complex * c = [a add: b];
	[c print];

	c = [a sub: b];
	[c print];

	c = [a multiply: b];
	[c print];

	c = [a divide: b];
	[c print];

	[c release];
	[b release];
	[a release];

	[pool drain];

	return 0;
}