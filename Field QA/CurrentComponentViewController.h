//
//  ComponentDetailViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Component;

@protocol FQAItemSelection <NSObject>

- (void)didSelectItem:(id)item fromViewController:(UIViewController*)viewController;

@end

@interface CurrentComponentViewController : UIViewController  <FQAItemSelection>

@property (nonatomic) Component *detailComponent;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end


