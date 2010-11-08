#import <Foundation/Foundation.h>

@interface RandomEquation : NSObject {
    NSInteger _level;
    NSString* _equation;
    NSInteger _answer;
}

@property (nonatomic, readwrite) NSInteger level;
@property (nonatomic, readwrite) NSInteger answer;
@property (nonatomic, retain) NSString *equation;

- (void) generateRandomEquation:(NSInteger) level;
- (int) randomNumber:(NSInteger)level;
- (int) solve: (NSString *) string;

- (id) initWithLevel:(NSInteger) level;
- (BOOL) fifty;

@end
