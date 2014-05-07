//
//  DeploymentDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QADataController.h"

@class Deployment;

@interface DeploymentDetailViewController : UITableViewController <QACellConfiguration>

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UITextView *notesTextView;
@property (nonatomic) Deployment *detailDeployment;

@end
