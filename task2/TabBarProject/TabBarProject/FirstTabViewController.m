//
//  ViewController.m
//  TabBarProject
//
//  Created by Anatoliy on 11/15/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import "FirstTabViewController.h"

@interface FirstTabViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelWidth;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation FirstTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.maximumValue = self.view.frame.size.width;
}

- (IBAction)changeLabelWidth:(id)sender {
    self.labelWidth.constant = self.slider.maximumValue - self.slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
