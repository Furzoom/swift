#import <Foundation/Foundation.h>
#import "Foo.h"

int gGlobalVar = 5;

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Foo *foo = [[Foo alloc] init];

	NSLog(@"%i", gGlobalVar);
	
	[foo setGlobalVar: 100];
	NSLog(@"%i", gGlobalVar);

	[foo release];
	[pool drain];
	return 0;
}