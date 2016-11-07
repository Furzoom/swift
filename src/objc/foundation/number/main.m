#import <Foundation/NSObject.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSString.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSNumber *myNumber, *floatNumber, *intNumber;
    NSInteger myInt;

    // integer value
    intNumber = [NSNumber numberWithInteger: 100];
    myInt = [intNumber integerValue];
    NSLog(@"%li", (long)myInt);

    // long value
    myNumber = [NSNumber numberWithLong: 0xabcdef];
    NSLog(@"%lx", [myNumber longValue]);

    // char value
    myNumber = [NSNumber numberWithChar: 'x'];
    NSLog(@"%c", [myNumber charValue]);

    // float value
    floatNumber = [NSNumber numberWithFloat: 100.0];
    NSLog(@"%f", [floatNumber floatValue]);

    // double value
    myNumber = [NSNumber numberWithDouble: 12345e15];
    NSLog(@"%f", [myNumber doubleValue]);
    // wrong access here
    NSLog(@"%i", [myNumber integerValue]);

    // test two Numbers for equality
    if ([intNumber isEqualToNumber: floatNumber] == YES)
    {
        NSLog(@"Numbers are equal");
    }
    else
    {
        NSLog(@"Numbers are not equal");
    }

    // test if one Number is <, ==, > second Number
    if ([intNumber compare: myNumber] == NSOrderedAscending)
    {
        NSLog(@"First number is less than second");
    }



    [pool drain];
    return 0;
}
