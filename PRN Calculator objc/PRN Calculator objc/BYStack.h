//
//  BYStack.h
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BYStack : NSObject

- (instancetype)initWithArray:(NSArray *)array;
- (void)push:(NSNumber *)value;
- (NSNumber *)pop;
- (NSNumber *)peek;

@end

NS_ASSUME_NONNULL_END