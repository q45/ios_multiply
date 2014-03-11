//
//  ViewController.h
//  Multiply
//
//  Created by Q on 3/10/14.
//  Copyright (c) 2014 wasatchCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;

@property (weak, nonatomic) IBOutlet UISlider *mySlider;


- (IBAction)onCalculateButtonPressed:(id)sender;
- (IBAction)sliderButton:(id)sender;

@end
