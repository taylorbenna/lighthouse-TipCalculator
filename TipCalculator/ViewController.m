//
//  ViewController.m
//  TipCalculator
//
//  Created by Taylor Benna on 2016-05-13.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageField;
@property (weak, nonatomic) IBOutlet UISlider *tipSlider;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipPercentageField.text = [NSString stringWithFormat:@"%.2f", self.tipSlider.value];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(UIButton *)sender {
    float bill = [self.billAmountField.text floatValue];
    float percentage = [self.tipPercentageField.text floatValue];
    float tipAmount = bill * (percentage / 100);
    self.tipAmountLabel.text = [NSString stringWithFormat:@"Tip Amount: $%.2f", tipAmount];
    [self.view endEditing:NO];
}

- (IBAction)sliderMoved:(UISlider *)sender {
    self.tipPercentageField.text = [NSString stringWithFormat:@"%.2f", self.tipSlider.value];
}
- (IBAction)screenTapped:(UITapGestureRecognizer *)sender {
    [self.view endEditing:NO];
}


@end
