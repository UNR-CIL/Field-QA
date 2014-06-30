//
//  System.h
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Deployment, LogicalDevice, Person, ServiceEntry;

@interface System : NSManagedObject

/**Unique identifier
 */
@property (nonatomic, retain) NSString * uniqueIdentifier;

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) Person *creator;
@property (nonatomic, retain) Deployment *deployment;
@property (nonatomic, retain) LogicalDevice *logicalDevice;
@property (nonatomic, retain) NSSet *serviceEntries;
@end

@interface System (CoreDataGeneratedAccessors)

- (void)addServiceEntriesObject:(ServiceEntry *)value;
- (void)removeServiceEntriesObject:(ServiceEntry *)value;
- (void)addServiceEntries:(NSSet *)values;
- (void)removeServiceEntries:(NSSet *)values;

@end
