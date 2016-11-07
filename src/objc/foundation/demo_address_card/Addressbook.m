#import "AddressBook.h"

@implementation AddressBook;

- (id) initWithName: (NSString *) name
{
    self = [super init];
    if (self)
    {
        bookName = [[NSString alloc] initWithString: name];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}

- (int) entries
{
    return [book count];
}

- (void) list
{
    NSLog(@"=== Contents of: %@ ==", bookName);
    for (AddressCard *card in book)
    {
        NSLog(@"%-10s %-20s", [card.name UTF8String],
                [card.email UTF8String]);
    }
    NSLog(@"=======================================");
}

- (void) dealloc
{
    [bookName release];
    [book release];
    [super dealloc];
}

- (AddressCard *) lookup: (NSString *) theName
{
    for (AddressCard *nextCard in book)
    {
        if ([[nextCard name] caseInsensitiveCompare: theName] ==
                NSOrderedSame)
        {
            return nextCard;
        }
    }
    return nil;
}

- (void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}

- (void) sort
{
    [book sortUsingSelector: @selector(compareNames:)];
}
@end
