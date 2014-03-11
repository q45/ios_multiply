//
//  ViewController.m
//  Multiply
//
//  Created by Q on 3/10/14.
//  Copyright (c) 2014 wasatchCode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myMultiplier.text = @"10";
    self.myNumber = _myNumber;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)onCalculateButtonPressed:(id)sender {
    
    int number = [self.myNumber.text intValue];
    int multiplier = [self.myMultiplier.text intValue];
    
    int result = number * multiplier;
    
    if (result > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    
    self.myAnswer.text = [NSString stringWithFormat:@"%d", result];
    NSLog(@"%d", result);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
@end
