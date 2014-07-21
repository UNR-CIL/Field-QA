//
//  LogicalDeviceDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/27/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentComponentViewController.h"

@class LogicalDevice;

@interface LogicalDeviceDetailViewController : UITableViewController

@property (nonatomic, weak) id <FQAItemSelection, FQACurrentItems> itemSelectionDelegate;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) LogicalDevice *detailLogicalDevice;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;

@end
