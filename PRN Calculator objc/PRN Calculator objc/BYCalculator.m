//
//  BYCalculator.m
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYCalculator.h"
#import "BYStack.h"

@interface BYCalculator()

@property BYStack *stack;

@end

@implementation BYCalculator
- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[BYStack alloc] initWithArray:@[]];
    }
    return self;
}

- (void)pushNumber:(double)value{
    NSNumber *number = [NSNumber numberWithDouble:value];
    [self.stack push:number];
    NSLog(@"stack: %lu", [_stack count]);
}
- (void)applyOperator:(BYOperator)operator {
    
    if ([self.stack count] >= 2) {
        
        NSNumber *rhsOperand = [self.stack pop];
        NSNumber *lhsOperand = [self.stack pop];
        
        double result = 0.0;
        switch (operator) {
            case add:
                result = [lhsOperand doubleValue] + [rhsOperand doubleValue];
                break;
            case subtract:
                result = [lhsOperand doubleValue] - [rhsOperand doubleValue];
                break;
            case divide:
                result = [lhsOperand doubleValue] / [rhsOperand doubleValue];
                break;
            case multiply:
                result = [lhsOperand doubleValue] * [rhsOperand doubleValue];
                break;
                
            default:
                break;
        }
        [self.stack push:[NSNumber numberWithDouble:result]];
    }
}
- (void)clear {
    [self.stack clear];
}
- (double)topValue {
    return [[self.stack peek] doubleValue];
}

@end
