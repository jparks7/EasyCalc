//
//  CalculatorModel.h
//  EasyCalc
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorModel : NSObject

@property (nonatomic) double waitingOperand;
@property (nonatomic, strong) NSString *operation;

- (double)performOperationWithOperand:(double)newOperator;


@end
