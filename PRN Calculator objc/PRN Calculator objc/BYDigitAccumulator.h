//
//  BYDigitAccumulator.h
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BYDigitAccumulator : NSObject

- (void)addDigitWithNumericValue:(int)number;
- (void)addDecimalPoint;
- (void)clear;
@property (readonly) double value;
@property (readonly) NSString* stringValue;


@end

NS_ASSUME_NONNULL_END
