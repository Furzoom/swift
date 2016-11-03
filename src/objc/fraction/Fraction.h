#include <Foundation/Foundation.h>

@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (Fraction *) add: (Fraction *) f;
- (void) reduce;
@end
