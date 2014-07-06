//
//  ProjectDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/26/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Project;

@interface ProjectDetailViewController : UITableViewController

@property (nonatomic) Project *detailProject;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;



@end
