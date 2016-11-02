@interface Fraction: NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
@end
