#import <Foundation/Foundation.h>

extern int MyASMFunc(int a, int b) __attribute__((fastcall));

int main(void)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello, world!");
    unichar c = u'加';
    NSLog(@"The character is: %C", c);
    NSLog(@"The value is: %d", MyASMFunc(10, 20));
    [pool drain];
}
