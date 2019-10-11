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
        _stack = [[BYStack alloc] init];
    }
    return self;
}

- (void)pushNumber:(double)value{
    NSNumber *number = [NSNumber numberWithDouble:value];
    [self.stack push:number];
}
- (void)applyOperator:(BYOperator)operator {
    NSNumber *rhsOperand = [self.stack pop];
    NSNumber *lhsOperand = [self.stack pop];
    if ([self.stack count] >= 2 && rhsOperand && lhsOperand) {
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
