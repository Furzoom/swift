// Program to work with frac1s - class version

#import <Foundation/Foundation.h>

// @interface section
@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}

- (void) print;
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;
@end

// @implementation section
@implementation Fraction

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (void) setNumerator: (int) n
{
    numerator = n;
}

- (void) setDenominator: (int) d
{
    denominator = d;
}
@end

// program section

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *frac1 = [[Fraction alloc] init];
    Fraction *frac2 = [[Fraction alloc] init];

    [frac1 setNumerator: 1];
    [frac1 setDenominator: 3];

    [frac2 setNumerator: 3];
    [frac2 setDenominator: 7];

    NSLog(@"The first of frac1 is:");
    [frac1 print];

    NSLog(@"The second of frac2 is:");
    [frac2 print];

    [frac1 release];
    [frac2 release];

    [pool drain];
    return 0;
}

