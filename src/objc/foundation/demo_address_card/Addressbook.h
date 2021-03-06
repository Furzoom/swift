#include <Foundation/NSArray.h>
#import "AddressCard.h"

@interface AddressBook: NSObject
{
    NSString *bookName;
    NSMutableArray *book;
}

- (id) initWithName: (NSString *) name;
- (void) addCard: (AddressCard *) theCard;
- (int) entries;
- (void) list;
- (void) dealloc;
- (AddressCard *) lookup: (NSString *) theName;
- (void) removeCard: (AddressCard *) theCard;
- (void) sort;

@end

