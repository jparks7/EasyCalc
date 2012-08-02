//
//  ViewController.m
//  EasyCalc
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display;
@synthesize typingNumber = _typingNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.typingNumber = NO;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)numberPressed:(UIButton *)sender {
    //If the typingNumber variable is YES
    if (self.typingNumber) {
        NSString *newDisplay = [self.display.text stringByAppendingFormat:@"%@", sender.titleLabel.text];
        self.display.text = newDisplay;
    } //Otherwise, if variable is NO
    else {
        self.display.text = sender.titleLabel.text;
        self.typingNumber = YES;
    }
    
    
}

- (IBAction)operatorPressed:(UIButton *)sender {
    NSString *operator = sender.titleLabel.text;
    if ([operator isEqualToString:@"x"]) {
        NSLog(@"Multiply");
    } else if ([operator isEqualToString:@"÷"]) {
        NSLog(@"Divide");
    } else if ([operator isEqualToString:@"+"]) {
        NSLog(@"Add");
    } else if ([operator isEqualToString:@"-"]) {
        NSLog(@"Subtract");
    } else if ([operator isEqualToString:@"="]) {
        NSLog(@"Equate");
    }
}

- (IBAction)clearPressed:(UIButton *)sender {
    self.display.text = @"0";
    self.typingNumber = NO; //Changed to NO so that considers it not typing a number, thus allowing the next number typed to replace the 0 in the label. 
}
@end
