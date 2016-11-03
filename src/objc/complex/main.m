#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    Complex *c1 = [[Complex alloc] init];
    Complex *c2 = [[Complex alloc] init];
    Complex *compResult;

    [c1 setReal: 19.0 andImaginary: 2.5];
    [c2 setReal: -5.0 andImaginary: 3.2];

    [c1 print];
    NSLog(@"+");
    [c2 print];
    NSLog(@"---------");
    compResult = [c1 add: c2];
    [compResult print];


    [c1 release];
    [c2 release];
    [compResult release];
    [pool drain];
    return 0;
}
