#import "Person.h"
#import "Teacher.h"
#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Person *person = [[Person alloc] init];
    Teacher *teacher = [[Teacher alloc] init];
    
    NSLog(@"isMemberOfClass:");
    // YES
    if ([teacher isMemberOfClass: [Teacher class]]) {
        NSLog(@"teacher is a member of Teacher");
    } else {
        NSLog(@"teacher is NOT a member of Teacher");
    }

    // NO
    if ([teacher isMemberOfClass: [Person class]]) {
        NSLog(@"teacher is a member of Person");
    } else {
        NSLog(@"teacher is NOT a member of Person");
    }

    // NO
    if ([teacher isMemberOfClass: [NSObject class]]) {
        NSLog(@"teacher is a member of NSObject");
    } else {
        NSLog(@"teacher is NOT a member of NSObject");
    }

    NSLog(@"-------------------------------");
    NSLog(@"isKindOfClass:");
    // YES
    if ([teacher isKindOfClass: [Teacher class]]) {
        NSLog(@"teacher is a kind of Teacher");
    } else {
        NSLog(@"teacher is NOT a kind of Teacher");
    }

    // YES
    if ([teacher isKindOfClass: [Person class]]) {
        NSLog(@"teacher is a kind of Person");
    } else {
        NSLog(@"teacher is NOT a kind of Person");
    }

    // YES
    if ([teacher isKindOfClass: [NSObject class]]) {
        NSLog(@"teacher is a kind of NSObject");
    } else {
        NSLog(@"teacher is NOT a kind of NSObject");
    }

    NSLog(@"-------------------------------");
    NSLog(@"respondsToSelector");
    // YES
    if ([teacher respondsToSelector: @selector(setAge:)]) {
        NSLog(@"teacher can respond to setAge");
    } else {
        NSLog(@"teacher can NOT respond to setAge");
    }

    // YES
    if ([teacher respondsToSelector: @selector(init)]) {
        NSLog(@"teacher can respond to init");
    } else {
        NSLog(@"teacher can NOT respond to init");
    }

    // NO
    if ([teacher respondsToSelector: @selector(noRespond)]) {
        NSLog(@"teacher can respond to noRespond");
    } else {
        NSLog(@"teacher can NOT respond to noRespond");
    }

    // YES
    if ([Teacher respondsToSelector: @selector(alloc)]) {
        NSLog(@"Teacher can respond to alloc");
    } else {
        NSLog(@"Teacher can NOT respond to alloc");
    }

    NSLog(@"-------------------------------");
    NSLog(@"instancesRespondToSelector");
    // YES
    if ([Teacher instancesRespondToSelector: @selector(teach)]) {
        NSLog(@"Teacher's instance can respond to teach");
    } else {
        NSLog(@"Teacher's instance can NOT respond to teach");
    }

    // NO
    if ([Person instancesRespondToSelector: @selector(teach)]) {
        NSLog(@"Person's instance can respond to teach");
    } else {
        NSLog(@"Person's instance can NOT respond to teach");
    }

    NSLog(@"-------------------------------");
    NSLog(@"isSubclassOfClass");
    // YES
    if ([Teacher isSubclassOfClass: [Person class]]) {
        NSLog(@"Teacher is a subclass of Person");
    } else {
        NSLog(@"Teacher is NOT a subclass of Person");
    }

    // YES
    if ([Teacher isSubclassOfClass: [Teacher class]]) {
        NSLog(@"Teacher is a subclass of Teacher");
    } else {
        NSLog(@"Teacher is NOT a subclass of Teacher");
    }

    NSLog(@"-------------------------------");
    NSLog(@"performSelector");
    //
    [teacher performSelector: @selector(teach)];

    [person release];
    [teacher release];
    [pool drain];
    return 0;
}
