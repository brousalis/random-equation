#import <Foundation/Foundation.h>
#import "RandomEquation.h"

int main (int argc, const char * argv[]) 
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    RandomEquation *equation = [[RandomEquation alloc] initWithLevel:1];
    NSLog(@"%@ = %d", equation, [equation solve]);
    [equation release];

    [pool drain];
    return 0;
}

