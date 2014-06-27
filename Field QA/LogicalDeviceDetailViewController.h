//
//  LogicalDeviceDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/27/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LogicalDevice;

@interface LogicalDeviceDetailViewController : UIViewController

@property (nonatomic) LogicalDevice *detailLogicalDevice;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;

@end
