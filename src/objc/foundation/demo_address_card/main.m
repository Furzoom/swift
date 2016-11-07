#import "AddressCard.h"
#import <Foundation/NSAutoreleasePool.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString *aName = @"Furzoom";
    NSString *aEmail = @"mn@furzoom.com";
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];

    [card1 setName: aName];
    [card1 setEmail: aEmail];
    [card1 print];

    [card2 setName: @"mn" andEmail: @"mn@qq.com"];
    [card2 print];

    [card1 release];
    [card2 release];
    [pool drain];
    return 0;
}
