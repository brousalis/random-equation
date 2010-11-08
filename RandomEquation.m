#import "RandomEquation.h"

@implementation RandomEquation

@synthesize level = _level;
@synthesize equation = _equation;

#pragma mark -
#pragma mark Init
- (id) initWithLevel:(NSInteger) level
{    
    if(self = [super init])
    {
        _level = level;
        [self generateRandomEquation:level];
    }
    return self;
}

#pragma mark -
#pragma mark Random Generation
- (void) generateRandomEquation:(NSInteger) level 
{
    NSMutableArray *equationString = [[NSMutableArray alloc] init];
    int numOfNumbers = 2 + arc4random() % 3;
    NSLog(@"Numbers: %d", numOfNumbers);
    
    int numArray[numOfNumbers];
    for(int i = 0; i < numOfNumbers; i++) {
        int random = [self randomNumber:level];
        numArray[i] = random;
        [equationString addObject:[NSNumber numberWithInt:random]];
        
        NSString *sign = [self fifty] ? @"+" : @"-";
        
        if(i != numOfNumbers - 1)
            [equationString addObject:sign];
        else
        
        [sign release];
    }
    
    _equation = [equationString componentsJoinedByString:@" "];

    [equationString release];
}

- (int) randomNumber:(NSInteger)level 
{
    srandom(time(NULL));
    int random_number = 1 + arc4random() % (level * 10);
    return random_number;
}

- (int) solve: (NSString *) string
{
    int result = 0;
    
    NSScanner *scanner = [NSScanner scannerWithString: string];
    [scanner setCharactersToBeSkipped: nil];
    NSString *delimiter = @",";

    while (![scanner isAtEnd]) {
        int next = 0;
        if (![scanner scanInt:  &next ]) {
            [NSException raise: @"NumberExpected" format: @"Expected a number, found %@ instead", [string substringFromIndex:  [scanner scanLocation]]];
        };
        if (next < 1000) {
            result += next;
        }
        if (![scanner scanString: delimiter intoString: NULL]) {
            [scanner scanString:  @"\n" intoString:  NULL];
        }
    }
    
    return result;
}

- (BOOL) fifty 
{
    return (arc4random() % 2 ? YES : NO);
}

#pragma mark -
#pragma mark NSObject overrides
- (NSString *) description
{
    return [NSString stringWithFormat:@"%@", _equation];
}

@end
