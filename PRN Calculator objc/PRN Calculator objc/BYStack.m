//
//  BYStack.m
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYStack.h"

@interface BYStack()

@property NSMutableArray *values;

@end

@implementation BYStack

- (instancetype)initWithArray:(NSArray *)array {
    if (self = [super init]) {
        _values = [array mutableCopy];
    }
    return self;
}

- (void)push:(NSNumber *)value {
    [_values addObject:value];
}

- (NSNumber *)pop {
    if (_values.count > 0) {
        NSNumber *lastNumber = _values.lastObject;
        [_values removeLastObject];
        return lastNumber;
    } else {
        return nil;
    }
}

- (NSNumber *)peek {
    return _values.lastObject;
}

@end
