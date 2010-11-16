//
//  ValueNode.m
//  RandomEquation
//
//  Created by Tim Ekl on 11/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ValueNode.h"

@implementation ValueNode

@synthesize value = _value;

#pragma mark -
#pragma mark Initializers

- (id)init {
    if((self = [super init])) {
        self.value = [NSDecimalNumber decimalNumberWithString:@"0"];
    }
    return self;
}

- (id)initWithValue:(NSDecimalNumber *)value {
    if((self = [super init])) {
        self.value = value;
    }
    return self;
}

#pragma mark -
#pragma mark EquationNode methods

- (NSDecimalNumber *)evaluate {
    return [[_value copy] autorelease];
}

#pragma mark -
#pragma mark String methods

- (NSString *)description {
    return [NSString stringWithFormat:@"%@", self.value];
}

@end
