
#import <Foundation/Foundation.h>

#import "fraction.h"


@implementation Fraction 

@synthesize numerator, denominator;

- (void) print {
	NSLog(@"%d/%d", numerator, denominator);
}

- (double) convertToDouble {
	if ( denominator != 0 )
		return numerator / (double) denominator;
	else
		return NAN;
}

- (void) setTo : (int) n over : (int) d {
	numerator = n;
	denominator = d;
}

- (void) add: (Fraction *) f {

	numerator = numerator * f.denominator + f.numerator * denominator;
	denominator *= f.denominator;

	int r, a, b;

	a = denominator; b = numerator;

	while (b) {
		r = a % b;
		a = b;
		b = r;
	}

	numerator /= a;
	denominator /= a;
}

@end
