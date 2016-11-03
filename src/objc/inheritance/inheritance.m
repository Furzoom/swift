#import <Foundation/Foundation.h>

// classA
@interface ClassA: NSObject
{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end


// classB
@interface ClassB: ClassA
-(void) printVar;
-(void) initVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x = %i", x);
}

-(void) initVar
{
    x = 200;
}

@end

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    ClassB *b = [[ClassB alloc] init];
    [b initVar];
    [b printVar];
    [b release];
    [pool drain];
    return 0;
}

