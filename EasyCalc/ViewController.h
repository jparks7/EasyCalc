//
//  ViewController.h
//  EasyCalc
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;
@property (nonatomic) BOOL typingNumber;
@property (nonatomic, strong) CalculatorModel *model;


- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)operatorPressed:(UIButton *)sender;
- (IBAction)clearPressed:(UIButton *)sender;
- (IBAction)clearAll:(UIButton *)sender;



@end
