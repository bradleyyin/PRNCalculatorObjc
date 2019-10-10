//
//  BYCalculator.h
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BYCalculator : NSObject
//enum Operator {
//
//};

typedef NS_ENUM(char, Operator) {
    add,
    subtract,
    multiply,
    divide,
};

@property (nonatomic) NSNumber *topValue;

- (void)pushNumber:(double)value;
- (void)applyOperator:(Operator)operator;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
