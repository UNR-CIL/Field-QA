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

/**Category type description
 */
@property (nonatomic, retain) NSString * category;

/**Date this service entry was created
 */
@property (nonatomic, retain) NSDate * creationDate;

/**Date this service entry was most recently modified
 */
@property (nonatomic, retain) NSDate * modificationDate;

/**Notes for this entry
 */
@property (nonatomic, retain) NSString * notes;

/**Thumbnail photo
 */
@property (nonatomic, retain) id photo;

/**Associated components
 */
@property (nonatomic, retain) NSSet *components;

/**Person who created this entry
 */
@property (nonatomic, retain) Person *creator;

/**Associated deployments
 */
@property (nonatomic, retain) NSSet *deployments;

/**Associated systems
 */
@property (nonatomic, retain) NSSet *systems;

/**Associated users
 */
@property (nonatomic, retain) NSSet *users;
@end

@interface ServiceEntry (CoreDataGeneratedAccessors)

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

/**Add a deployment
 */
- (void)addDeploymentsObject:(Deployment *)value;

/**Remove a deployment
 */
- (void)removeDeploymentsObject:(Deployment *)value;

/**Add several deployments
 */
- (void)addDeployments:(NSSet *)values;

/**Remove several deployments
 */
- (void)removeDeployments:(NSSet *)values;

/**Add a system
 */
- (void)addSystemsObject:(System *)value;

/**Remove a system
 */
- (void)removeSystemsObject:(System *)value;

/**Add several systems
 */
- (void)addSystems:(NSSet *)values;

/**Remove several systems
 */
- (void)removeSystems:(NSSet *)values;

/**Add a user
 */
- (void)addUsersObject:(Person *)value;

/**Remove a user
 */
- (void)removeUsersObject:(Person *)value;

/**Add several users
 */
- (void)addUsers:(NSSet *)values;

/**Remove several users
 */
- (void)removeUsers:(NSSet *)values;

@end
