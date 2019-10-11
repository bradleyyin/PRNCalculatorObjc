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

- (NSUInteger)count {
    return [self.values count];
}

- (void)push:(NSNumber *)value {
    [self.values addObject:value];
}

- (NSNumber *)pop {
    if (_values.count > 0) {
        NSNumber *lastNumber = [self.values lastObject];
        [self.values removeLastObject];
        return lastNumber;
    } else {
        return nil;
    }
}

- (NSNumber *)peek {
    return [self.values lastObject];
}

- (void)clear {
    [self.values removeAllObjects];
}

@end
