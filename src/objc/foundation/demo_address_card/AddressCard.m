#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    [self setName: theName];
    [self setEmail: theEmail];
}

- (void) print
{
    NSLog(@"================================");
    NSLog(@"|                              |");
    NSLog(@"| %-29s|", [name UTF8String]);
    NSLog(@"| %-29s|", [email UTF8String]);
    NSLog(@"|                              |");
    NSLog(@"|                              |");
    NSLog(@"|                              |");
    NSLog(@"|     O                O       |");
    NSLog(@"================================");
}

@end
