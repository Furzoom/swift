#import <Foundation/Foundation.h>

// classA
@interface ClassA: NSObject
{
    int x;
}
-(void) initVar;
-(void) printVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}

-(void) printVar
{
    NSLog(@"x = %i", x);
}

@end


// classB
@interface ClassB: ClassA
{
    int y;
}

-(void) initVar;
-(void) printVar;
@end

@implementation ClassB

-(void) initVar
{
    x = 200;
    y = 300;
}

-(void) printVar
{
    [super printVar];
    NSLog(@"y = %i", y);
}

@end

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    ClassA *a = [[ClassA alloc] init];
    ClassB *b = [[ClassB alloc] init];

    [a initVar];
    [a printVar];

    [b initVar];
    [b printVar];

    [a release];
    [b release];

    [pool drain];
    return 0;
}

