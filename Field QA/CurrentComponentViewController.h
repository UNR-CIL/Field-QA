//
//  ComponentDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Component;

@class Project;
@class Deployment;
@class System;
@class LogicalDevice;

@protocol FQAItemSelection <NSObject>

- (void)didSelectItem:(id)item fromViewController:(UIViewController*)viewController;

@end

@protocol FQACurrentItems <NSObject>

- (Project*)currentProject;
- (Deployment*)currentDeployment;
- (System*)currentSystem;
- (LogicalDevice*)currentLogicalDevice;

@end


@interface CurrentComponentViewController : UIViewController  <FQAItemSelection, FQACurrentItems, UISplitViewControllerDelegate>

@property (nonatomic) Component *detailComponent;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end


