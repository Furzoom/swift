#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "MathOps.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *f1 = [[Fraction alloc] init];
    Fraction *f2 = [[Fraction alloc] init];
    Fraction *result;

    [f1 setTo: 1 over: 3];
    [f2 setTo: 2 over: 5];

    [f1 print];
    NSLog(@"    +");
    [f2 print];
    NSLog(@"-----");
    result = [f1 add: f2];
    [result print];
    NSLog(@"");
    [result release];

    [f1 print];
    NSLog(@"    -");
    [f2 print];
    NSLog(@"-----");
    result = [f1 sub: f2];
    [result print];
    NSLog(@"");
    [result release];

    [f1 print];
    NSLog(@"    *");
    [f2 print];
    NSLog(@"-----");
    result = [f1 mul: f2];
    [result print];
    NSLog(@"");
    [result release];

    [f1 print];
    NSLog(@"    /");
    [f2 print];
    NSLog(@"-----");
    result = [f1 div: f2];
    [result print];
    NSLog(@"");
    [result release];

    [f1 release];
    [f2 release];

    [pool drain];
    return 0;
}

