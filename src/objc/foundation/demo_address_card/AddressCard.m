#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    [self setName: theName];
    [self setEmail: theEmail];
}

- (BOOL) isEqual: (AddressCard *) theCard
{
    if ([name isEqualToString: theCard.name] == YES &&
            [email isEqualToString: theCard.email] == YES)
    {
        return YES;
    }
    else
    {
        return NO;
    }
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

- (NSComparisonResult) compareNames: (id) element
{
    return [name compare: [element name]];
}
@end
