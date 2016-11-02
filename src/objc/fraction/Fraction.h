@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;

@end
