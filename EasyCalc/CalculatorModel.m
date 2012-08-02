//
//  CalculatorModel.m
//  EasyCalc
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel
@synthesize waitingOperand = _waitingOperand;
@synthesize operation = _operation;

- (double)performOperationWithOperand:(double)newOperator
{
    double result;
    
    if ([self.operation isEqualToString:@"x"]) {
        NSLog(@"Multiply");
    } else if ([self.operation isEqualToString:@"÷"]) {
        NSLog(@"Divide");
    } else if ([self.operation isEqualToString:@"+"]) {
        NSLog(@"Add");
    } else if ([self.operation isEqualToString:@"-"]) {
        NSLog(@"Subtract");
    } else if ([self.operation isEqualToString:@"="]) {
        NSLog(@"Equate");
    }
    
    return 0.0;
}

@end
