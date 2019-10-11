//
//  BYDigitAccumulator.m
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYDigitAccumulator.h"

@interface BYDigitAccumulator()

@property NSMutableArray *digits;

@end

@implementation BYDigitAccumulator
- (instancetype)init
{
    self = [super init];
    if (self) {
        _digits = [NSMutableArray arrayWithArray:@[]];
    }
    return self;
}

- (double)value {
    NSString *numberAsString = [self.digits componentsJoinedByString:@""];
    return [numberAsString doubleValue];
}

- (void)addDecimalPoint {
    if ([self.digits containsObject:@"."]) {
        NSLog(@"Try to add more than one decimal point");
    } else {
        [self.digits addObject:@"."];
    }
}

- (void)addDigitWithNumericValue:(NSInteger)number {
    NSNumber *digit = [NSNumber numberWithInteger:number];
    NSString *digitString = digit.stringValue;
    [self.digits addObject:digitString];
}

- (void)clear {
    [self.digits removeAllObjects];
}

@end
