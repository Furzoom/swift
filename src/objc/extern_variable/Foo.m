#import "Foo.h"

@implementation Foo

- (void) setGlobalVar: (int) var
{
	extern int gGlobalVar;
	gGlobalVar = var;
}

@end