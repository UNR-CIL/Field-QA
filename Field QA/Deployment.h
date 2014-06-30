//
//  Deployment.h
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person, Project, ServiceEntry, System;

@interface Deployment : NSManagedObject

/**Unique identifier
 */
@property (nonatomic, retain) NSString * uniqueIdentifier;

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) Person *creator;
@property (nonatomic, retain) Project *project;
@property (nonatomic, retain) NSSet *serviceEntries;
@property (nonatomic, retain) NSSet *systems;
@property (nonatomic, retain) NSSet *users;
@end

@interface Deployment (CoreDataGeneratedAccessors)

- (void)addServiceEntriesObject:(ServiceEntry *)value;
- (void)removeServiceEntriesObject:(ServiceEntry *)value;
- (void)addServiceEntries:(NSSet *)values;
- (void)removeServiceEntries:(NSSet *)values;

- (void)addSystemsObject:(System *)value;
- (void)removeSystemsObject:(System *)value;
- (void)addSystems:(NSSet *)values;
- (void)removeSystems:(NSSet *)values;

- (void)addUsersObject:(Person *)value;
- (void)removeUsersObject:(Person *)value;
- (void)addUsers:(NSSet *)values;
- (void)removeUsers:(NSSet *)values;

@end
