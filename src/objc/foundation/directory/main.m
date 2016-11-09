#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString *dirName = @"testdir";
    NSString *path;
    NSFileManager *fm;

    // Create an instance of the file manager
    fm = [NSFileManager defaultManager];

    // Get current directory
    path = [fm currentDirectoryPath];
    NSLog(@"Current directory path is %@", path);

    // Create a new directory
    if ([fm createDirectoryAtPath: dirName attributes: nil] == NO) 
    {
        NSLog(@"Couldn't create directory!");
        return 1;
    }

    // Rename the new directory
    if ([fm movePath: dirName toPath: @"newdir" handler: nil] == NO)
    {
        NSLog(@"Directory rename failed!");
        return 2;
    }

    // Change directory into the new directory
    if ([fm changeCurrentDirectoryPath: @"newdir"] == NO)
    {
        NSLog(@"Change directory failed!");
        return 3;
    }

    // Now get and display current working directory
    path = [fm currentDirectoryPath];
    NSLog(@"Current directory path is %@", path);

    NSLog(@"All operations were successful!");

    [pool drain];
    return 0;
}
