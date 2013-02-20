//
//  BIDSwitchViewController.m
//  ViewSwitcher
//
//  Created by Josemac on 19.02.13.
//  Copyright (c) 2013 Jose. All rights reserved.
//

#import "BIDSwitchViewController.h"
#import "BIDBlueViewController.h"
#import "BIDYellowViewController.h"

@interface BIDSwitchViewController ()

@end

@implementation BIDSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.blueViewController = [[BIDBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if (self.blueViewController.view.superview == nil)
    {
        self.blueViewController = nil;
    }
    else
    {
        self.yellowViewController = nil;
    }
}

- (IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    if(self.yellowViewController.view.superview == nil)
    {
        if (self.yellowViewController == nil)
        {
            self.yellowViewController =
            [[BIDYellowViewController alloc] initWithNibName:@"YellowView"
                                                      bundle:nil];
        }
        
        [UIView setAnimationTransition:
         UIViewAnimationTransitionFlipFromRight
                               forView:self.view cache:YES];
        
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    }
    else
    {
        if (self.blueViewController == nil)
        {
            self.blueViewController =
            [[BIDBlueViewController alloc] initWithNibName:@"BlueView"
                                                    bundle:nil];
        }
        
        [UIView setAnimationTransition:
         UIViewAnimationTransitionFlipFromLeft
                               forView:self.view cache:YES];
        
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
    
    [UIView commitAnimations];

}

@end
