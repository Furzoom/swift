#import <Foundation/Foundation.h>


int main(int argc, const char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    typedef double (^MKBlock)(void);

    static double a = 10.0;
    static double b = 20.0;

    MKBlock multiply = ^{return a * b;};
    NSLog(@"%f", multiply());

    a = 2;
    b = 3;
    NSLog(@"%f", multiply());


    [pool release];
    return 0;
}
