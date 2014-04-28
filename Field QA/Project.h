//
//  Project.h
//  Field QA
//
//  Created by John Jusayan on 4/28/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person;

@interface Project : NSManagedObject

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSSet *contacts;
@property (nonatomic, retain) NSSet *deployments;
@end

@interface Project (CoreDataGeneratedAccessors)

- (void)addContactsObject:(Person *)value;
- (void)removeContactsObject:(Person *)value;
- (void)addContacts:(NSSet *)values;
- (void)removeContacts:(NSSet *)values;

- (void)addDeploymentsObject:(NSManagedObject *)value;
- (void)removeDeploymentsObject:(NSManagedObject *)value;
- (void)addDeployments:(NSSet *)values;
- (void)removeDeployments:(NSSet *)values;

@end
