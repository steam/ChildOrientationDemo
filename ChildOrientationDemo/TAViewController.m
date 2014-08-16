//
//  TAViewController.m
//  ChildOrientationDemo
//
//  Created by Tad Wheeler on 8/15/14.
//  Copyright (c) 2014 Tad Wheeler. All rights reserved.
//

#import "TAViewController.h"

@interface TAViewController ()

@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, strong) UIViewController *centerViewController;
@end

@implementation TAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self portraitTapped:nil];
}

- (void)showRandomVC
{
    int random = arc4random() % 3;

    switch (random) {
        case 0:
            NSLog(@"show portrait");
            [self portraitTapped:nil];
            break;
        case 1:
            NSLog(@"show landscape");
            [self landscapeTapped:nil];
            break;
        case 2:
            NSLog(@"show both");
            [self both:nil];
            break;
        default:
            break;
    }
}


- (BOOL)shouldAutorotate
{
    return [self.centerViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.centerViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.centerViewController preferredInterfaceOrientationForPresentation];
}

- (IBAction)portraitTapped:(id)sender
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"PortraitVC"];
    [self showViewController:vc];
}

- (IBAction)landscapeTapped:(id)sender
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"LandscapeVC"];
    [self showViewController:vc];
}

- (IBAction)both:(id)sender
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"BothVC"];
    [self showViewController:vc];
}

- (void)showViewController:(UIViewController *)vc
{
    if (self.centerViewController)
    {
        [self dismissViewControllerAnimated:NO completion:^{
            self.centerViewController = vc;
            [self presentViewController:self.centerViewController animated:NO completion:nil];
        }];
    }
    else
    {
        self.centerViewController = vc;
        [self presentViewController:self.centerViewController animated:NO completion:nil];
    }
}

@end
