//
//  BYCalculatorViewController.m
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import "BYCalculatorViewController.h"
#import "BYCalculator.h"
#import "BYDigitAccumulator.h"

@interface BYCalculatorViewController ()

@property BYCalculator *calculator;
@property BYDigitAccumulator *digitAccumulator;

@end

@implementation BYCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _calculator = [[BYCalculator alloc] init];
    _digitAccumulator = [[BYDigitAccumulator alloc] init];
    _numberFormatter = [[NSNumberFormatter alloc] init];
    
    _numberFormatter.allowsFloats = YES;
    _numberFormatter.maximumIntegerDigits = 20;
    _numberFormatter.minimumFractionDigits = 0;
    _numberFormatter.maximumFractionDigits = 20;
}

- (void)addNumber {
    if (!self.digitAccumulator.value) {
        return;
    }
    
    double value = self.digitAccumulator.value;
    NSLog(@"%f", value);

    [self.calculator pushNumber:self.digitAccumulator.value];
    [self.digitAccumulator clear];
    [self updateTextFieldWithValue:value];
    NSLog(@"%f", self.calculator.topValue);
}

- (void)updateTextFieldWithValue: (double)value {
    NSString *valueString = [self.numberFormatter stringFromNumber:@(value)];
    [_textField setText: valueString];
}

- (IBAction)numberButtonTapped:(id)sender {
    double number = [sender tag];
       [self.digitAccumulator addDigitWithNumericValue:number];
       [self updateTextFieldWithValue: self.digitAccumulator.value];
}

- (IBAction)returnButtonTapped:(id)sender {
    [self addNumber];
}

- (IBAction)addButtonTapped:(id)sender {
    [self addNumber];
    [self.calculator applyOperator: add];
    [self updateTextFieldWithValue: self.calculator.topValue];
}

- (IBAction)subtractButtonTapped:(id)sender {
    [self addNumber];
    [self.calculator applyOperator: subtract];
    [self updateTextFieldWithValue: self.calculator.topValue];
}

- (IBAction)multiplyButtonTapped:(id)sender {
    [self addNumber];
    [self.calculator applyOperator: multiply];
    [self updateTextFieldWithValue: self.calculator.topValue];
}

- (IBAction)divideButtonTapped:(id)sender {
    [self addNumber];
    [self.calculator applyOperator: divide];
    [self updateTextFieldWithValue: self.calculator.topValue];
}

- (IBAction)decimalButtonTapped:(id)sender {
    [self.digitAccumulator addDecimalPoint];
    [self updateTextFieldWithValue: self.digitAccumulator.value];
}

- (IBAction)clearButtonTapped:(id)sender {
    [self.digitAccumulator clear];
    [self.calculator clear];
    [self.textField setText:@""];
}


@end
