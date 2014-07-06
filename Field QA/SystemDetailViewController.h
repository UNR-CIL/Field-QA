//
//  SystemDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/27/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class System;

@interface SystemDetailViewController : UITableViewController

@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) System *detailSystem;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;

@end
