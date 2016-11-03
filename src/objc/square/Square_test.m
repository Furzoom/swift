#import "Square.h"
#import "XYPoint.h"
#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	Square *mySquare = [[Square alloc] init];

	[mySquare setSide: 5];
	NSLog(@"Square s = %i", [mySquare side]);
	NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
    Rectangle *myRect = [[Rectangle alloc] init];
    XYPoint *myPoint = [[XYPoint alloc] init];

    [myPoint setX: 100 andY: 200];

    [myRect setWidth: 5 andHeight: 8];
    myRect.origin = myPoint;

    NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
    NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);

    [myPoint setX: 50 andY: 50];
    NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);

    [[myRect origin] release];
	[mySquare release];
    [myRect release];
    [myPoint release];

	[pool drain];
	return 0;
}
