#import "AddressCard.h"
#import "AddressBook.h"
#import <Foundation/NSAutoreleasePool.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    NSString *aName = @"Furzoom";
    NSString *aEmail = @"mn@furzoom.com";
    NSString *bName = @"Tony";
    NSString *bEmail = @"tony@example.com";
    NSString *cName = @"Stephen";
    NSString *cEmail = @"Stephen@example.org";
    NSString *dName = @"Jamie";
    NSString *dEmail = @"Jamie@example.com";

    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    AddressCard *myCard;

    AddressBook *book = [AddressBook alloc];

    [card1 setName: aName andEmail: aEmail];
    [card2 setName: bName andEmail: bEmail];
    [card3 setName: cName andEmail: cEmail];
    [card4 setName: dName andEmail: dEmail];

    [book initWithName: @"John's Address Book"];

    NSLog(@"Entries in addresss book after creation: %i", [book entries]);

    [book addCard: card1];
    [book addCard: card2];
    [book addCard: card3];
    [book addCard: card4];

    NSLog(@"Entries in address book after adding cards: %i", 
            [book entries]);

    [book list];
    
    myCard = [book lookup: @"Jamie"];

    if (myCard != nil)
    {
        [myCard print];
    }
    else
    {
        NSLog(@"Not found!");
    }
    
    [book removeCard: card2];
    [book list];

    [book sort];
    [book list];

    [card1 release];
    [card2 release];
    [card3 release];
    [card4 release];
    [book release];
    [pool drain];
    return 0;
}
