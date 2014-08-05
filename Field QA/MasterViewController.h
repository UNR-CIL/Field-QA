//
//  ComponentsViewController.h
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic) DetailViewController *detailViewController;

@property (nonatomic) NSManagedObjectContext *managedObjectContext;

@end
