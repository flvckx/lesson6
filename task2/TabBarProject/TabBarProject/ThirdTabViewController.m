//
//  ThirdTabViewController.m
//  TabBarProject
//
//  Created by Anatoliy on 11/15/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import "ThirdTabViewController.h"

@interface ThirdTabViewController ()

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *viewWidth;
@property (nonatomic, weak) IBOutlet UISlider *slider;

@end

@implementation ThirdTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.minimumValue = self.viewWidth.constant;
    self.slider.maximumValue = self.view.frame.size.width - self.viewWidth.constant;
}

- (IBAction)changeLabelWidth:(id)sender {
    self.viewWidth.constant = self.slider.value;
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
