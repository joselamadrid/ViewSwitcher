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
}

- (IBAction)switchViews:(id)sender
{
    if(self.yellowViewController.view.superview == nil)
    {
    
    }

}

@end
