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
