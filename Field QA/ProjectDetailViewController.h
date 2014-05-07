//
//  ProjectDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Project;
#import "QADataController.h"

@interface ProjectDetailViewController : UITableViewController <QACellConfiguration>

@property (strong, nonatomic) Project *detailProject;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;

@end
