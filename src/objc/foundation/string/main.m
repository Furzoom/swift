#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSValue.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSError.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // NSString
    NSString *str = @"Objective-C is fun";
    NSLog(@"%@", str);

    // print object
    NSNumber *intNumber = [NSNumber numberWithInteger: 100];
    NSLog(@"%@", intNumber);

    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;
    NSComparisonResult compareResult;
    NSRange subRange;

    // Count the number of characters
    NSLog(@"Length of str1: %lu", [str1 length]);

    // Copy one string to another
    res = [NSString stringWithString: str1];
    NSLog(@"copy: %@", res);

    // Copy one string to the end of another
    str2 = [str1 stringByAppendingString: str2];
    NSLog(@"Concatentation: %@", str2);

    // Test if two strings are equal
    if ([str1 isEqualToString: res] == YES)
    {
        NSLog(@"str1 == res");
    }
    else
    {
        NSLog(@"str1 != res");
    }

    // Test if one string is <, ==, > than another
    compareResult = [str1 compare: str2];
    if (compareResult == NSOrderedAscending)
    {
        NSLog(@"str1 < str2");
    }
    else if (compareResult == NSOrderedDescending)
    {
        NSLog(@"str1 > str2");
    }
    else // NSOrderedSame
    {
        NSLog(@"str1 == str2");
    }

    // Convert a string to uppercase
    res = [str1 uppercaseString];
    NSLog(@"Uppercase conversion: %@", res);

    // Convert a string to lowercase
    res = [str1 lowercaseString];
    NSLog(@"Lowercase conversion: %@", res);

    NSLog(@"--------------------------------------");

    // Extract frist 3 chars from string
    res = [str1 substringToIndex: 3];
    NSLog(@"First 3 chars of str1: %@", res);

    // Extract chars to end of string starting at index 5
    res = [str1 substringFromIndex: 5];
    NSLog(@"Chars from index 5 of str1: %@", res);

    // Extract chars from index 8 through 13 (6 chars)
    res = [[str1 substringFromIndex: 8] substringToIndex: 6];
    NSLog(@"Chars from index 8 through 13: %@", res);

    // An easier way to do the same thing
    res = [str1 substringWithRange: NSMakeRange(8, 6)];
    NSLog(@"Chars from index 8 through 13: %@", res);

    // Locate one string inside another
    subRange = [str1 rangeOfString: @"string A"];
    NSLog(@"String is at index %lu, length is %lu",
            subRange.location, subRange.length);

    subRange = [str1 rangeOfString: @"string B"];
    if (subRange.location == NSNotFound)
    {
        NSLog(@"String not found");
    }
    else
    {
        NSLog(@"String is at index %lu, length is %lu",
                subRange.location, subRange.length);
    }

    NSLog(@"--------------------------------------");
    NSString *search, *replace;
    NSMutableString *mstr;

    // Create mutable string from nonmutable
    mstr = [NSMutableString stringWithString: str1];
    NSLog(@"%@", mstr);

    // Insert characters
    [mstr insertString: @" mutable" atIndex: 7];
    NSLog(@"InsertString: %@", mstr);

    // Effective concatentation if insert at end
    [mstr insertString: @" and string B" atIndex: [mstr length]];
    NSLog(@"%@", mstr);

    // Or can use appendString directly
    [mstr appendString: @" and string C"];
    NSLog(@"%@", mstr);

    // Delete substring based on range
    [mstr deleteCharactersInRange: NSMakeRange(16, 13)];
    NSLog(@"%@", mstr);

    // Find range first and than use it for deletion
    subRange = [mstr rangeOfString: @"string B and "];
    if (subRange.location != NSNotFound)
    {
        [mstr deleteCharactersInRange: subRange];
        NSLog(@"%@", mstr);
    }

    // Set the mutable string directly
    [mstr setString: @"This is string A"];
    NSLog(@"%@", mstr);

    // replace a range of chars with another
    [mstr replaceCharactersInRange: NSMakeRange(8, 8)
        withString: @"a mutable string "];
    NSLog(@"%@", mstr);

    // Search and replace
    search = @"This is ";
    replace = @"An example of ";
    subRange = [mstr rangeOfString: search];
    if (subRange.location != NSNotFound)
    {
        [mstr replaceCharactersInRange: subRange
            withString: replace];
        NSLog(@"%@", mstr);
    }

    // Search and replace all occurrances
    search = @"a";
    replace = @"#";
    subRange = [mstr rangeOfString: search];
    while (subRange.location != NSNotFound)
    {
        [mstr replaceCharactersInRange: subRange
            withString: replace];
        subRange = [mstr rangeOfString: search];
    }
    NSLog(@"%@", mstr);


    search = str1;
    replace = str1;
    str1 = search;
    str1 = replace;

    NSError *error = nil;
    NSString *string = [[NSString alloc] initWithContentsOfFile: @"makefile1"
                        encoding: NSUTF8StringEncoding
                        error: &error];
    if (nil != error) {
        NSLog(@"Unable to read data from file, %@", 
                [error localizedDescription]);
        return 1;
    }

    NSLog(@"%@", string);

    [string release];
    [pool drain];
    return 0;

}
