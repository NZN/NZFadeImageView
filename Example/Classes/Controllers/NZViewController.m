//
//  NZViewController.m
//  NZFadeImageView
//
//  Created by Bruno Furtado on 19/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "NZFadeImageView.h"

@interface NZViewController ()

@property (strong, nonatomic) IBOutlet NZFadeImageView *fadeView;

@end



@implementation NZViewController

#pragma mark -
#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.fadeView setAnimationDuration:.5];
    [self.fadeView setAnimateInterval:.9];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.fadeView startAnimation];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self.fadeView stopAnimation];
}

- (void)viewDidUnload
{
    [self setFadeView:nil];
    [super viewDidUnload];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end