#import <Foundation/NSObject.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSAutoreleasePool.h>

#define MAXPRIME 50

int main(int argc, char *argv[])
{
    int i, p, prevPrime;
    BOOL isPrime;
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    // Create an array to contain the month names
    NSArray *monthNames = [NSArray arrayWithObjects:
        @"January", @"February", @"March", @"April", @"May", @"June", @"July",
        @"August", @"September", @"October", @"November", @"December", nil];
    // Now list all the elements in the array
    NSLog(@"Month Name");
    NSLog(@"===== ====");
    for (i = 0; i < 12; i++)
    {
        NSLog(@"%2i %@", i + 1, [monthNames objectAtIndex: i]);
    }
    
    NSMutableArray *primes = [NSMutableArray arrayWithCapacity: 20];
    // Store the first two primes (2 and 3) into the array
    [primes addObject: [NSNumber numberWithInteger: 2]];
    [primes addObject: [NSNumber numberWithInteger: 3]];

    // calculate the remaining primes
    for (p = 5; p <= MAXPRIME; p += 2)
    {
        isPrime = YES;
        i = 1;
        do {
            prevPrime = [[primes objectAtIndex: i] integerValue];
            if (p % prevPrime == 0)
            {
                isPrime = NO;
            }
            ++i;
        } while (isPrime &&  p / prevPrime >= prevPrime);
        if (isPrime)
        {
            [primes addObject: [NSNumber numberWithInteger: p]];
        }
    }
    // Display the results
    for (i = 0; i < [primes count]; i++)
    {
        NSLog(@"%li", (long)[[primes objectAtIndex: i] integerValue]);
    }

    [pool drain];
    return 0;
}
