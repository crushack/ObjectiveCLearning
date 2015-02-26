
#import <Foundation/Foundation.h>
#import <complex>
#import <vector>

typedef complex double base

@interface FFT : NSOBJECT
{

}

+ (void) run: (std::vector<base> *) a invert: (bool) inverting {

	int n = a.size(), i, j;

	if ( n == 1 ) return;

	std::vector<base> * a0 = [[std::vector<base> alloc] init: n / 2];
	std::vector<base> * a1 = [[std::vector<base> alloc] init: n / 2];

	for ( i = j = 0; i < n; i += 2, ++ j ) {
		a0[j] = a[i];
		a1[j] = a[i + 1];
	}

	[self run: a0 invert: inverting];
	[self run: a1 invert: inverting];

	double ans = 2 * 

}

@end

int main( int argc, char * argv[] ) {

	return 0;
}