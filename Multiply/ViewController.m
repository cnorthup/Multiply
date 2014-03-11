//
//  ViewController.m
//  Multiply
//
//  Created by Charles Northup on 3/10/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;
//sender of mySlider is the value of the slider in float form
- (IBAction)mySlider:(UISlider *)sender;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onCalculateButtonPressed:(id)sender {
    
/*
*/
    
    int number = [self.myNumber.text integerValue];
    int number2 = [self.myMultiplier.text integerValue];
    int solved = number * number2;
    self.myAnswer.text = [NSString stringWithFormat:@"%d", solved];
    if (solved > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

/*sets myMultiplier text to the same as value of mySlider, but the (int)round(sender.value)
turns my float value of mySlider into an int which is needed because my equation uses
an int*/
- (IBAction)mySlider:(UISlider *)sender {
    self.myMultiplier.text = [NSString stringWithFormat:@"%d", (int)round(sender.value)];
}

- (IBAction)doneWithImput:(id)sender {
    [self.myNumber endEditing:YES];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
