//
//  QADataController.m
//  Field QA
//
//  Created by John Jusayan on 4/23/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import "QADataController.h"

@interface QADataController ()

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;

@end

@implementation QADataController

- (instancetype)init
{
    return [self initWithEntityName:nil sortDescriptors:nil inManagedObjectContext:nil delegate:nil];
}

- (instancetype)initWithEntityName:(NSString*)entityName sortDescriptors:(NSArray*)sortDescriptors inManagedObjectContext:(NSManagedObjectContext*)managedObjectContext delegate:(id<QACellConfiguration>)delegate
{
    self = [super init];
    
    if (self) {
        _delegate = delegate;
        _entityName = entityName;
        _sortDescriptors = sortDescriptors;
        _managedObjectContext = managedObjectContext;
    }
    return self;
}

#pragma mark - Fetched results controller

- (NSFetchedResultsController *)fetchedResultsController
{
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    // Edit the entity name as appropriate.
    NSEntityDescription *entity = [NSEntityDescription entityForName:self.entityName inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    // Set the batch size to a suitable number.
    [fetchRequest setFetchBatchSize:20];
    
    if (self.sortDescriptors) {
        [fetchRequest setSortDescriptors:self.sortDescriptors];
    }
    
    // Edit the section name key path and cache name if appropriate.
    // nil for section name key path means "no sections".
    NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:self.entityName];
    aFetchedResultsController.delegate = self;
    self.fetchedResultsController = aFetchedResultsController;
    
	NSError *error = nil;
	if (![self.fetchedResultsController performFetch:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
	    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
	    abort();
	}
    
    return _fetchedResultsController;
}

- (NSIndexPath*)indexPathForObject:(NSManagedObject*)object
{
    return [self.fetchedResultsController indexPathForObject:object];
}

- (id)objectAtIndexPath:(NSIndexPath*)indexPath
{
    return [self.fetchedResultsController objectAtIndexPath:indexPath];
}


#pragma mark - UITableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.fetchedResultsController sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.fetchedResultsController sections][section];
    return [sectionInfo numberOfObjects];
}


- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type
{
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath
{
    
    
    switch(type) {
        case NSFetchedResultsChangeInsert: {
            if (self.tableView) {
                [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            }
            else if (self.collectionView) {
                [self.collectionView insertItemsAtIndexPaths:@[newIndexPath]];
            }
            break;
        }
        case NSFetchedResultsChangeDelete: {
            if (self.tableView) {
                [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            }
            else if (self.collectionView) {
                [self.collectionView deleteItemsAtIndexPaths:@[indexPath]];
            }
            break;
        }
        case NSFetchedResultsChangeUpdate: {
            if (self.tableView) {
                [self.delegate configureTableViewCell:[self.tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
            }
            else if (self.collectionView) {
                [self.delegate configureCollectionViewCell:[self.collectionView cellForItemAtIndexPath:indexPath] atIndexPath:indexPath];
            }
            break;
        }
        case NSFetchedResultsChangeMove: {
            if (self.tableView) {
                [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
                [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            }
            else if (self.collectionView) {
                
            }
            break;
        }
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView endUpdates];
}




@end
