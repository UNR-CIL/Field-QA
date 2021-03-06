//
//  Project.h
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Deployment, Person;

@interface Project : NSManagedObject

/**Unique identifier
 */
@property (nonatomic, retain) NSString * uniqueIdentifier;

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

- (void)addDeploymentsObject:(Deployment *)value;
- (void)removeDeploymentsObject:(Deployment *)value;
- (void)addDeployments:(NSSet *)values;
- (void)removeDeployments:(NSSet *)values;

@end
