#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSAutoreleasePool.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString *str = @"Objective-C is fun";

    NSLog(@"%@", str);

    NSNumber *intNumber = [NSNumber numberWithInteger: 100];
    NSLog(@"%@", intNumber);

    [pool drain];
    return 0;
}
