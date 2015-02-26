
#import <Foundation/Foundation.h>

#import "complex.h"

@implementation Complex

@synthesize real, imag;

- (void) print {
	NSLog(@"%lf + i * %lf", real, imag);
}


- (void) setReal: (double) re andImag: (double) im {
	self.real = re;
	self.imag = im;
}

- (Complex *) add: (Complex * ) other {

	Complex * res = [[Complex alloc] init];

	res.real = real;
	res.imag = imag;

	res.real += other.real;
	res.imag += other.imag;

	return res;
}

- (Complex *) sub: (Complex * ) other {

	Complex * res = [[Complex alloc] init];

	res.real = real;
	res.imag = imag;

	res.real -= other.real;
	res.imag -= other.imag;

	return res;

}

- (Complex *) multiply: (Complex * ) other {

	Complex * res = [[Complex alloc] init];

	res.real = real * other.real - imag * other.imag;
	res.imag = real * other.imag + imag * other.real;

	return res;

}

- (Complex *) divide: (Complex *) other {

	Complex * res = [[Complex alloc] init];
	Complex * aux = [[Complex alloc] init];

	double frac = real * real + imag * imag;

	[aux setReal: real andImag: -imag];

	aux = [aux multiply: other];

	res.real = aux.real / frac;
	res.imag = - aux.imag / frac;

	[aux release];

	return res;
}

@end