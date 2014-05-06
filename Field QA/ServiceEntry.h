//
//  ServiceEntry.h
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Component, Deployment, Person, System;

@interface ServiceEntry : NSManagedObject

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSDate * modificationDate;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) id photo;
@property (nonatomic, retain) NSSet *components;
@property (nonatomic, retain) Person *creator;
@property (nonatomic, retain) NSSet *deployments;
@property (nonatomic, retain) NSSet *systems;
@property (nonatomic, retain) NSSet *users;
@end

@interface ServiceEntry (CoreDataGeneratedAccessors)

- (void)addComponentsObject:(Component *)value;
- (void)removeComponentsObject:(Component *)value;
- (void)addComponents:(NSSet *)values;
- (void)removeComponents:(NSSet *)values;

- (void)addDeploymentsObject:(Deployment *)value;
- (void)removeDeploymentsObject:(Deployment *)value;
- (void)addDeployments:(NSSet *)values;
- (void)removeDeployments:(NSSet *)values;

- (void)addSystemsObject:(System *)value;
- (void)removeSystemsObject:(System *)value;
- (void)addSystems:(NSSet *)values;
- (void)removeSystems:(NSSet *)values;

- (void)addUsersObject:(Person *)value;
- (void)removeUsersObject:(Person *)value;
- (void)addUsers:(NSSet *)values;
- (void)removeUsers:(NSSet *)values;

@end
