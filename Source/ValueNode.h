//
//  ValueNode.h
//  RandomEquation
//
//  Created by Tim Ekl on 11/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EquationNode.h"

@interface ValueNode : NSObject <EquationNode> {
    NSDecimalNumber * _value;
}

@property(nonatomic, retain) NSDecimalNumber * value;

- (id)initWithValue:(NSDecimalNumber *)value;

@end
