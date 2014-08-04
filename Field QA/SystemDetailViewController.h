//
//  SystemDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/27/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@class System;

@interface SystemDetailViewController : UITableViewController

@property (nonatomic, weak) id <FQAItemSelection, FQACurrentItems> itemSelectionDelegate;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) System *detailSystem;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;

@end
