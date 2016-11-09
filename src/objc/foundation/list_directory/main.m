#import <Foundation/NSString.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSArray.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString *path;
    NSFileManager *fm;
    NSDirectoryEnumerator *dirEnum;
    NSArray *dirArray;

    // Create an instance of the file manager
    fm = [NSFileManager defaultManager];

    // Get current working directory path
    path = [fm currentDirectoryPath];

    // Enumerate the directory
    dirEnum = [fm enumeratorAtPath: path];

    NSLog(@"Contents of %@: ", path);
    while ((path = [dirEnum nextObject]) != nil)
    {
        NSLog(@"%@", path);
    }

    dirArray = [fm directoryContentsAtPath: [fm currentDirectoryPath]];
    NSLog(@"Contents using directoryContentsAtPath:");
    for (path in dirArray)
    {
        NSLog(@"%@", path);
    }

    [pool drain];
    return 0;
}
