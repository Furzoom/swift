#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSFileManager.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSPathUtilities.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSString *fName = @"path.m";
    NSFileManager *fm;
    NSString *path, *tempdir, *extension, *homedir, *fullpath;
    NSString *upath = @"~/Documents/switf-OC/../oc/test";

    NSArray *components;

    fm = [NSFileManager defaultManager];
    tempdir = NSTemporaryDirectory();
    NSLog(@"Temporary Directory is %@", tempdir);

    path = [fm currentDirectoryPath];
    NSLog(@"Base dir is %@", [path lastPathComponent]);

    fullpath = [path stringByAppendingPathComponent: fName];
    NSLog(@"fullpath to %@ is %@", fName, fullpath);

    extension = [fullpath pathExtension];
    NSLog(@"extension for %@ is %@", fullpath, extension);

    homedir = NSHomeDirectory();
    NSLog(@"Your home directory is %@", homedir);

    components = [homedir pathComponents];
    for (path in components)
    {
        NSLog(@"%@", path);
    }

    NSLog(@"%@ => %@", upath, [upath stringByStandardizingPath]);

    [pool drain];
    return 0;
}
