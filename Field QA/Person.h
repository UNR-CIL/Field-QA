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

/**Contact email
 */
@property (nonatomic, retain) NSNumber * email;

/**First name
 */
@property (nonatomic, retain) NSString * firstName;

/**Last name
 */
@property (nonatomic, retain) NSString * lastName;

/**Phone number
 */
@property (nonatomic, retain) NSString * phone;

/**Associated components
 */
@property (nonatomic, retain) NSSet *components;

/**Deployments created by this person
 */
@property (nonatomic, retain) NSSet *createdDeployments;

/**Deployments managed by this person
 */
@property (nonatomic, retain) NSSet *managedDeployments;

/**Projects owned by this person
 */
@property (nonatomic, retain) NSSet *projects;

/**Service entries associated with this person
 */
@property (nonatomic, retain) NSSet *serviceEntries;

/**Service entries created by this person
 */
@property (nonatomic, retain) NSSet *serviceEntriesCreated;

/**Systems associated with this person
 */
@property (nonatomic, retain) NSSet *systems;
@end

@interface Person (CoreDataGeneratedAccessors)

/**Add a component
 */
- (void)addComponentsObject:(Component *)value;

/**Remove a component
 */
- (void)removeComponentsObject:(Component *)value;

/**Add several components
 */
- (void)addComponents:(NSSet *)values;

/**Remove several components
 */
- (void)removeComponents:(NSSet *)values;

/**Add a deployment created by this person
 */
- (void)addCreatedDeploymentsObject:(Deployment *)value;

/**Remove a deployment created by thsi person
 */
- (void)removeCreatedDeploymentsObject:(Deployment *)value;

/**Add several deployments created by this user
 */
- (void)addCreatedDeployments:(NSSet *)values;

/**Remove several deployments created by this user
 */
- (void)removeCreatedDeployments:(NSSet *)values;

/**Add a deployment managed by this person
 */
- (void)addManagedDeploymentsObject:(Deployment *)value;

/**Remove a deployment managed by this person
 */
- (void)removeManagedDeploymentsObject:(Deployment *)value;

/**Add several deployments managed by this person
 */
- (void)addManagedDeployments:(NSSet *)values;

/**Remove several deployments managed by this person
 */
- (void)removeManagedDeployments:(NSSet *)values;

/**Associate a project with this person
 */
- (void)addProjectsObject:(Project *)value;

/**Remove a project from this person
 */
- (void)removeProjectsObject:(Project *)value;

/**Add a set of projects to this person
 */
- (void)addProjects:(NSSet *)values;

/**Remove several projects from this person
 */
- (void)removeProjects:(NSSet *)values;

/**Add a service entry to this person
 */
- (void)addServiceEntriesObject:(ServiceEntry *)value;

/**Remove a service entry from this person
 */
- (void)removeServiceEntriesObject:(ServiceEntry *)value;

/**Add several service entries to this person
 */
- (void)addServiceEntries:(NSSet *)values;

/**Remove several service entries from this person
 */
- (void)removeServiceEntries:(NSSet *)values;

/**Add a service entry created by this person
 */
- (void)addServiceEntriesCreatedObject:(ServiceEntry *)value;

/**Remove a service entry crearted by this person
 */
- (void)removeServiceEntriesCreatedObject:(ServiceEntry *)value;

/**Add several service entries created by this person
 */
- (void)addServiceEntriesCreated:(NSSet *)values;

/**Remove several service entries created by this person
 */
- (void)removeServiceEntriesCreated:(NSSet *)values;

/**Add a system to this person
 */
- (void)addSystemsObject:(System *)value;

/**Remove a system from this person
 */
- (void)removeSystemsObject:(System *)value;

/**Add several systems to this person
 */
- (void)addSystems:(NSSet *)values;

/**Remove several systems from this person
 */
- (void)removeSystems:(NSSet *)values;

@end
