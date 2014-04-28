//
//  TNDataController.h
//  TNKit
//
//  Created by John Jusayan on 4/23/14.
//  Copyright (c) 2014 Treeness, LLC. All rights reserved.
//


#import <Foundation/Foundation.h>

@protocol TNTableCellConfiguration <NSObject>

@optional

- (void)configureCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)indexPath;

@end

@protocol TNCollectionCellConfiguration <NSObject>

@optional

- (void)configureCell:(UICollectionViewCell*)cell atIndexPath:(NSIndexPath*)indexPath;
- (void)configureReusableView:(UICollectionReusableView*)reusableView atIndexPath:(NSIndexPath*)indexPath;

@end

@interface TNDataController : NSObject <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) UITableView <TNTableCellConfiguration> *tableView;
@property (strong, nonatomic) UICollectionView <TNCollectionCellConfiguration> *collectionView;
@property (strong, nonatomic) NSString *entityName;
@property (strong, nonatomic) NSArray *sortDescriptors;

- (instancetype)initWithEntityName:(NSString*)entityName sortDescriptors:(NSArray*)sortDescriptors inManagedObjectContext:(NSManagedObjectContext*)managedObjectContext;

@end
