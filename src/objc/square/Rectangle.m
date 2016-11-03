#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
@synthesize width, height;

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *) pt
{
    if (origin)
        [origin release];

    origin = [[XYPoint alloc] init];
    [origin setX: pt.x andY: pt.y];
}

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}

-(void) dealloc
{
    [origin release];
    [super dealloc];
}
@end
