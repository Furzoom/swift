#import <Foundation/Foundation.h>
#import "Complex.h"
#import "../fraction/Fraction.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    Fraction *f1 = [[Fraction alloc] init];
    Fraction *f2 = [[Fraction alloc] init];
    Fraction *fracResult;
    Complex *c1 = [[Complex alloc] init];
    Complex *c2 = [[Complex alloc] init];
    Complex *compResult;

    [f1 setTo: 1 over: 10];
    [f2 setTo: 2 over: 15];
    [c1 setReal: 19.0 andImaginary: 2.5];
    [c2 setReal: -5.0 andImaginary: 3.2];

    [c1 print];
    NSLog(@"+");
    [c2 print];
    NSLog(@"---------");
    compResult = [c1 add: c2];
    [compResult print];

    [f1 print];
    NSLog(@"+");
    [f2 print];
    NSLog(@"---------");
    fracResult = [f1 add: f2];
    [fracResult print];

    [f1 release];
    [f2 release];
    [fracResult release];
    [c1 release];
    [c2 release];
    [compResult release];
    [pool drain];
    return 0;
}
