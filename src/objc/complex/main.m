#import <Foundation/Foundation.h>
#import "Complex.h"
#import "../fraction/Fraction.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    id dataValue;
    Fraction *f1 = [[Fraction alloc] init];
    Complex *c1 = [[Complex alloc] init];

    [f1 setTo: 1 over: 10];
    [c1 setReal: 19.0 andImaginary: 2.5];

    dataValue = f1;
    [dataValue print];
    dataValue = c1;
    [dataValue print];
    
/*
    [c1 print];
    NSLog(@"+");
    NSLog(@"---------");
    [compResult print];

    [f1 print];
    NSLog(@"+");
    NSLog(@"---------");
    [fracResult print];
*/
    [f1 release];
    [c1 release];
    [pool drain];
    return 0;
}
