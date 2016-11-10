#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSFileHandle.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSData.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSFileHandle *inFile, *outFile;
    NSData *buffer;

    inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];

    if (inFile == nil)
    {
        NSLog(@"Open of testfile for reading failed!");
        return 1;
    }

    [[NSFileManager defaultManager] createFileAtPath: @"testout" 
        contents: nil attributes: nil];
    outFile = [NSFileHandle fileHandleForWritingAtPath: @"testout"];
    if (outFile == nil)
    {
        NSLog(@"Open of testout for writing failed!");
        return 2;
    }

    [outFile truncateFileAtOffset: 0];
    buffer = [inFile readDataToEndOfFile];
    [outFile writeData: buffer];

    [inFile closeFile];
    [outFile closeFile];
    NSLog(@"%@", [NSString stringWithContentsOfFile: @"testout" encoding:
            NSUTF8StringEncoding error: nil]);

    [pool drain];
    return 0;
}
