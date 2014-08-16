//
//  TAPortraitOnlyViewController.m
//  ChildOrientationDemo
//
//  Created by Tad Wheeler on 8/15/14.
//  Copyright (c) 2014 Tad Wheeler. All rights reserved.
//

#import "TAPortraitOnlyViewController.h"

@interface TAPortraitOnlyViewController ()

@end

@implementation TAPortraitOnlyViewController

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    UIViewController *viewController = [[UIViewController alloc] init];
//    [viewController setModalPresentationStyle:UIModalPresentationCurrentContext];
//    viewController.view.frame = CGRectZero;
//
//    [self presentViewController:viewController animated:NO completion:nil];
//    [self dismissViewControllerAnimated:NO completion:nil];
//}

-(void)viewDidLoad
{
    [super viewDidLoad];
//    [[UIApplication sharedApplication] setStatusBarOrientation:self.preferredInterfaceOrientationForPresentation];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}


@end
