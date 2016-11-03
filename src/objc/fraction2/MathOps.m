#import "MathOps.h"

@implementation Fraction (MahtOps)

- (Fraction *) add: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum;
	int resultDenom;

	resultNum = numerator * f.denominator + denominator * f.numerator;
	resultDenom = denominator * f.denominator;

	[result setTo: resultNum over: resultDenom];
	[self reduce];

	return result;
}

- (Fraction *) sub: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum;
	int resultDenom;

	resultNum = numerator * f.denominator - denominator * f.numerator;
	resultDenom = denominator * f.denominator;

	[result setTo: resultNum over: resultDenom];
	[self reduce];

	return result;
}

- (Fraction *) mul: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum;
	int resultDenom;

	resultNum = numerator * f.numerator;
	resultDenom = denominator * f.denominator;

	[result setTo: resultNum over: resultDenom];
	[result reduce];

	return result;
}

- (Fraction *) div: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum;
	int resultDenom;

	resultNum = numerator * f.denominator;
	resultDenom = denominator * f.numerator;

	[result setTo: resultNum over: resultDenom];
	[result reduce];

	return result;
}
@end