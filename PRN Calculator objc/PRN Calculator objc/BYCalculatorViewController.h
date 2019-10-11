//
//  BYCalculatorViewController.h
//  PRN Calculator objc
//
//  Created by Bradley Yin on 10/10/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BYCalculatorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property NSNumberFormatter *numberFormatter;

- (IBAction)numberButtonTapped:(id)sender;
- (IBAction)returnButtonTapped:(id)sender;
- (IBAction)addButtonTapped:(id)sender;
- (IBAction)subtractButtonTapped:(id)sender;
- (IBAction)multiplyButtonTapped:(id)sender;
- (IBAction)divideButtonTapped:(id)sender;
- (IBAction)decimalButtonTapped:(id)sender;
- (IBAction)clearButtonTapped:(id)sender;

@end

NS_ASSUME_NONNULL_END
