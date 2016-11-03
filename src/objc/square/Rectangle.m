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
@end
