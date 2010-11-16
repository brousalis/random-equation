//
//  EquationNode.h
//  RandomEquation
//
//  Created by Tim Ekl on 11/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//


@protocol EquationNode <NSObject>

@required
- (NSDecimalNumber *)evaluate;

@end
