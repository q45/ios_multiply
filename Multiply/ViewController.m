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
    self.mySlider.minimumValue = 0;
    self.mySlider.maximumValue = 100;
    
    
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
        self.view.backgroundColor = [UIColor colorWithRed:75/255.0f green:188/255.0f blue:90/255.0f alpha:1.0f];
    }
    
    self.myAnswer.text = [NSString stringWithFormat:@"%d", result];
    NSLog(@"%d", result);
}

- (IBAction)sliderButton:(id)sender {
    UISlider *slider = (UISlider *)sender;
    
    int sliderValue = slider.value;
    
    self.myNumber.text = [NSString stringWithFormat:@"%i", sliderValue];
    NSLog(@"%i", sliderValue);
    self.myNumber.text = [NSString stringWithFormat:@"%i", sliderValue];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
@end
