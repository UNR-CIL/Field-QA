//
//  Person.h
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Component, Deployment, Project, ServiceEntry, System;

@interface Person : NSManagedObject

@property (nonatomic, retain) NSNumber * email;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSSet *components;
@property (nonatomic, retain) NSSet *createdDeployments;
@property (nonatomic, retain) NSSet *managedDeployments;
@property (nonatomic, retain) NSSet *projects;
@property (nonatomic, retain) NSSet *serviceEntries;
@property (nonatomic, retain) NSSet *serviceEntriesCreated;
@property (nonatomic, retain) NSSet *systems;
@end

@interface Person (CoreDataGeneratedAccessors)

- (void)addComponentsObject:(Component *)value;
- (void)removeComponentsObject:(Component *)value;
- (void)addComponents:(NSSet *)values;
- (void)removeComponents:(NSSet *)values;

- (void)addCreatedDeploymentsObject:(Deployment *)value;
- (void)removeCreatedDeploymentsObject:(Deployment *)value;
- (void)addCreatedDeployments:(NSSet *)values;
- (void)removeCreatedDeployments:(NSSet *)values;

- (void)addManagedDeploymentsObject:(Deployment *)value;
- (void)removeManagedDeploymentsObject:(Deployment *)value;
- (void)addManagedDeployments:(NSSet *)values;
- (void)removeManagedDeployments:(NSSet *)values;

- (void)addProjectsObject:(Project *)value;
- (void)removeProjectsObject:(Project *)value;
- (void)addProjects:(NSSet *)values;
- (void)removeProjects:(NSSet *)values;

- (void)addServiceEntriesObject:(ServiceEntry *)value;
- (void)removeServiceEntriesObject:(ServiceEntry *)value;
- (void)addServiceEntries:(NSSet *)values;
- (void)removeServiceEntries:(NSSet *)values;

- (void)addServiceEntriesCreatedObject:(ServiceEntry *)value;
- (void)removeServiceEntriesCreatedObject:(ServiceEntry *)value;
- (void)addServiceEntriesCreated:(NSSet *)values;
- (void)removeServiceEntriesCreated:(NSSet *)values;

- (void)addSystemsObject:(System *)value;
- (void)removeSystemsObject:(System *)value;
- (void)addSystems:(NSSet *)values;
- (void)removeSystems:(NSSet *)values;

@end
