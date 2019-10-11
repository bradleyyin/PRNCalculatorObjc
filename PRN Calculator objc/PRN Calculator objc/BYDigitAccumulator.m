//
//  BYDigitAccumulator.m
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYDigitAccumulator.h"

@interface BYDigitAccumulator()

@property NSMutableString *digits;

@end

@implementation BYDigitAccumulator
- (instancetype)init
{
    self = [super init];
    if (self) {
        _digits = [[NSMutableString alloc] init];
    }
    return self;
}

- (NSString *)stringValue {
    return [NSString stringWithFormat:@"%@", self.digits];
}

- (double)value {
    return [self.digits doubleValue];
}

- (void)addDecimalPoint {
    if ([self.digits containsString:@"."]) {
        NSLog(@"Try to add more than one decimal point");
    } else {
        [self.digits appendString:@"."];
    }
}

- (void)addDigitWithNumericValue:(int)number {
    if (number > 9 && number < 0) {
        return;
    }

    [self.digits appendFormat:@"%i", number];
}

- (void)clear {
    self.digits = [@"" mutableCopy];
}

@end
