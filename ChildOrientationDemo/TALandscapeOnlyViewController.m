//
//  TALandscapeOnlyViewController.m
//  ChildOrientationDemo
//
//  Created by Tad Wheeler on 8/15/14.
//  Copyright (c) 2014 Tad Wheeler. All rights reserved.
//

#import "TALandscapeOnlyViewController.h"

@interface TALandscapeOnlyViewController ()

@end

@implementation TALandscapeOnlyViewController

//-(void)viewDidAppear:(BOOL)animated
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
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
