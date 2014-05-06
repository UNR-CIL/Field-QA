//
//  QADataController.h
//  Field QA
//
//  Created by John Jusayan on 4/23/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//


#import <Foundation/Foundation.h>

@protocol QACellConfiguration <NSObject>

@optional

- (void)configureTableViewCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)indexPath;
- (void)configureCollectionViewCell:(UICollectionViewCell*)cell atIndexPath:(NSIndexPath*)indexPath;
- (void)configureReusableView:(UICollectionReusableView*)reusableView atIndexPath:(NSIndexPath*)indexPath;

@end


@interface QADataController : NSObject <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) id <QACellConfiguration> delegate;
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UICollectionView *collectionView;
@property (strong, nonatomic) NSString *entityName;
@property (strong, nonatomic) NSArray *sortDescriptors;

- (instancetype)initWithEntityName:(NSString*)entityName sortDescriptors:(NSArray*)sortDescriptors inManagedObjectContext:(NSManagedObjectContext*)managedObjectContext delegate:(id <QACellConfiguration>)delegate;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;


- (NSIndexPath*)indexPathForObject:(NSManagedObject*)object;
- (id)objectAtIndexPath:(NSIndexPath*)indexPath;

@end
