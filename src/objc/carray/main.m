#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    int fibonacci[15];
    int i;

    fibonacci[0] = 0;
    fibonacci[1] = 1;
    for (i = 2; i < 15; i++)
    {
        fibonacci[i] = fibonacci[i-2] + fibonacci[i-1];
    }

    for (i = 0; i < 15; i++)
    {
        NSLog(@"%i", fibonacci[i]);
    }

    [pool drain];
    return 0;
}

