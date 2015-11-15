//
//  SecondTabViewController.m
//  TabBarProject
//
//  Created by Anatoliy on 11/15/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import "SecondTabViewController.h"

@interface SecondTabViewController ()

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *textViewHeight;
@property (nonatomic, weak) IBOutlet UISlider *slider;

@end

@implementation SecondTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.maximumValue = self.view.frame.size.height;
}

- (IBAction)changeLabelHeight:(id)sender {
    self.textViewHeight.constant = self.slider.maximumValue - self.slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
