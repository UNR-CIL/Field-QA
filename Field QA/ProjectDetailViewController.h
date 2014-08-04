//
//  ProjectDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/26/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DetailViewController.h"

@class Project;

@interface ProjectDetailViewController : UITableViewController

@property (nonatomic, weak) id <FQAItemSelection, FQACurrentItems> itemSelectionDelegate;

@property (nonatomic) Project *detailProject;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;



@end
