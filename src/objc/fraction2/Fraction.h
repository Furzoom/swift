#include <Foundation/Foundation.h>

@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

- (Fraction *) initWith: (int) n: (int) d;
- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (void) reduce;

@end
