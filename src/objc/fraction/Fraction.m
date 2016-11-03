#import <Foundation/Foundation.h>
#import "Fraction.h"

// @implementation section
@implementation Fraction

@synthesize numerator, denominator;

- (Fraction *) init
{
    return [self initWith: 0: 0];
}

- (Fraction *) initWith: (int) n: (int) d
{
    self = [super init];
    if (self)
        [self setTo: n over: d];
    return self;
}

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return 1.0;
}

- (void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

- (Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    int resultNum;
    int resultDenom;

    resultNum = numerator * f.denominator + denominator * f.numerator;
    resultDenom = denominator * f.denominator;

    [result setTo: resultNum over: resultDenom];
    [result reduce];
    return result;
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}

@end
