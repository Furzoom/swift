#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSDictionary.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString *fName = @"testfile";
    NSFileManager *fm;
    NSDictionary *attr;

    fm = [NSFileManager defaultManager];

    if ([fm fileExistsAtPath: fName] == NO) 
    {
        NSLog(@"File doesn't exist!");
        return 1;
    }

    if ([fm copyPath: fName toPath: @"newfile" handler: nil] == NO)
    {
        NSLog(@"File copy failed!");
        return 2;
    }

    if ([fm contentsEqualAtPath: fName andPath: @"newfile"] == NO)
    {
        NSLog(@"Files are not equal!");
        return 3;
    }

    if ([fm movePath: @"newfile" toPath: @"newfile2" handler: nil] == NO)
    {
        NSLog(@"File rename failed!");
        return 4;
    }

    if ((attr = [fm fileAttributesAtPath: @"newfile2" traverseLink: NO]) == nil)
    {
        NSLog(@"Couldn't get file attributes!");
        return 5;
    }

    NSLog(@"File size is %i bytes",
            [[attr objectForKey: NSFileSize] intValue]);

    if ([fm removeFileAtPath: fName handler: nil] == NO) 
    {
        NSLog(@"File removal failed!");
        return 6;
    }

    NSLog(@"All operations were successful!");
    NSLog(@"%@", [NSString stringWithContentsOfFile: @"newfile2"
            encoding: NSUTF8StringEncoding error: nil]);
            
    [pool drain];
    return 0;
}
