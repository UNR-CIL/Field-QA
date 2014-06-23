//
//  ComponentsViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CurrentComponentViewController;

@interface ComponentsViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic) CurrentComponentViewController *detailViewController;

@property (nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@end
