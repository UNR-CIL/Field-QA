//
//  ProjectDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/26/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Project;

@interface ProjectDetailViewController : UIViewController

@property (nonatomic) Project *detailProject;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

- (void)updateTextFields;
- (void)readFromTextFields;



@end