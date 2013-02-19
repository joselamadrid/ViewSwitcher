//
//  BIDSwitchViewController.h
//  ViewSwitcher
//
//  Created by Josemac on 19.02.13.
//  Copyright (c) 2013 Jose. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDYellowViewController;
@class BIDBlueViewController;

@interface BIDSwitchViewController : UIViewController
@property (strong, nonatomic) BIDYellowViewController *yellowViewController;
@property (strong, nonatomic) BIDBlueViewController *blueViewController;

- (IBAction)switchViews:(id)sender;

@end
