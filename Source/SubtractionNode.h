//
//  SubtractionNode.h
//  RandomEquation
//
//  Created by Tim Ekl on 11/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "EquationNode.h"

@interface SubtractionNode : NSObject <EquationNode> {
    id<EquationNode> _left;
    id<EquationNode> _right;
}

@property(nonatomic, retain) id<EquationNode> left;
@property(nonatomic, retain) id<EquationNode> right;

- (id)initWithLeftNode:(id<EquationNode>)left rightNode:(id<EquationNode>)right;
@end
