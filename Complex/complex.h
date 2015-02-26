
#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
	double real;
	double imag;
}

@property double real, imag;

- (void) print;

- (void) setReal: (double) re andImag: (double) im;
- (Complex *) add: (Complex *) other;
- (Complex *) sub: (Complex *) other;
- (Complex *) multiply: (Complex *) other;
- (Complex *) divide: (Complex *) other;

@end
