#import "../fraction/Fraction.h"
#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *f = [[Fraction alloc] init];

    @try {
        [f noSuchMethod];
    }
    @catch (NSException *exception) {
        NSLog(@"Caught %@|%@", [exception name], [exception reason]);
    }
    @finally {
        NSLog(@"finally execute.");
    }
    
    NSLog(@"Exception continues!");

    [f release];
    [pool drain];
    return 0;
}
