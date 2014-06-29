//
//  SystemsViewController.h
//  Field QA
//
//  Created by John Jusayan on 6/23/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentComponentViewController.h"

@interface SystemsViewController : UITableViewController

@property (nonatomic) id <FQAItemSelection> delegate;

@end
