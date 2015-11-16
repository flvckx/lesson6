//
//  ForthTabViewController.m
//  TabBarProject
//
//  Created by Anatoliy on 11/16/15.
//  Copyright © 2015 mobex. All rights reserved.
//

#import "ForthTabViewController.h"

@interface ForthTabViewController ()

@property (nonatomic, weak) IBOutlet UISlider *heightSlider;
@property (nonatomic, weak) IBOutlet UISlider *widthSlider;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *height;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *width;

@end

@implementation ForthTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.heightSlider.maximumValue = self.view.frame.size.height - self.height.constant;
    self.heightSlider.minimumValue = self.height.constant;
    self.widthSlider.maximumValue = self.view.frame.size.width;
    self.widthSlider.minimumValue = self.width.constant;
}

- (IBAction)changeLabelHeight:(id)sender {
    self.height.constant = self.heightSlider.value;
}

- (IBAction)changeLabelWidth:(id)sender {
    self.width.constant = self.widthSlider.value;
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
