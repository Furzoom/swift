#include <Foundation/Foundation.h>

@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

- (Fraction *) init;
- (Fraction *) initWith: (int) n: (int) d;
- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (Fraction *) add: (Fraction *) f;
- (void) reduce;

@end
