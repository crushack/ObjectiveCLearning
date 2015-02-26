
#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
	int numerator;
	int denominator;
}

@property int numerator, denominator;

- (void) print;

- (double) convertToDouble;

- (void) setTo : (int) n over : (int) d;

- (void) add: (Fraction *) f;

@end

