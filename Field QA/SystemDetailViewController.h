//
//  SystemDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QADataController.h"

@class System;

@interface SystemDetailViewController : UITableViewController <QACellConfiguration>

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UITextView *notesTextView;
@property (nonatomic) System *detailSystem;

@end
