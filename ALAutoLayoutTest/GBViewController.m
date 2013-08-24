//
//  GBViewController.m
//  ALAutoLayoutTest
//
//  Created by Nine Drafts Inc. on 8/15/13.
//  Copyright (c) 2013 noboru. All rights reserved.
//

#import "GBViewController.h"

@interface GBViewController ()
@property (strong, nonatomic) IBOutlet UIView *mainView;
@property (strong, nonatomic) IBOutlet UIView *subView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *mainViewBottomLayoutConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *middleViewButtomConstraint;

@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showHide:(id)sender {
    UISwitch *aSwitch = sender;
    if (aSwitch.on) {
//        Change Layout
        [UIView animateWithDuration:0.7 animations:^{
            self.mainViewBottomLayoutConstraint.constant = 100;
            self.middleViewButtomConstraint.constant = 50;
            [self.view layoutIfNeeded];
        }];
    }else {
        [UIView animateWithDuration:0.3 animations:^{
            self.mainViewBottomLayoutConstraint.constant = 50;
            self.middleViewButtomConstraint.constant = 0;
            [self.view layoutIfNeeded];
        }];


    }
}

@end
