#import <Foundation/Foundation.h>

@interface RetainTracker: NSObject
@end

@implementation RetainTracker
- (id) init
{
    if (self = [super init]) {
        NSLog(@"init: Retain count of %lu.", [self retainCount]);
    }
    return self;
}

- (void) dealloc
{
    NSLog(@"dealloc called. Bye Bye.");
    [super dealloc];
}
@end


int main(int argc, const char *argv[])
{
    RetainTracker *tracker = [RetainTracker new];
    [tracker retain];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker retain];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker retain];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];
    NSLog(@"%lu", [tracker retainCount]);

    [tracker release];

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    RetainTracker *t = [RetainTracker new];
    [t retain];
    [t autorelease];
    [t release];
    NSLog(@"releaseing pool");
    [pool release];

    @autoreleasepool
    {
        RetainTracker *t2 = [RetainTracker new];
        [t2 retain];
        [t2 autorelease];
        [t2 release];
        NSLog(@"auto releasing pool");
    }

    return 0;
}

