//
//  Component.h
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LogicalDevice, Person, ServiceEntry;

@interface Component : NSManagedObject

/**Unique identifier
 */
@property (nonatomic, retain) NSString * uniqueIdentifier;

/**Date the component was installed
 */
@property (nonatomic, retain) NSDate * installationDate;

/**Date this component entry was created
 */
@property (nonatomic, retain) NSDate * creationDate;

/**Installed height in meters
 */
@property (nonatomic, retain) NSNumber * height;

/**Date this component was deactivated
 */
@property (nonatomic, retain) NSDate * deactivationDate;

/**Notes about the location of this component
 */
@property (nonatomic, retain) NSString * locationNotes;

/**Model descripton
 */
@property (nonatomic, retain) NSString * model;

/**Component name
 */
@property (nonatomic, retain) NSString * name;

/**Notes about this component
 */
@property (nonatomic, retain) NSString * notes;

/**Serial number
 */
@property (nonatomic, retain) NSString * serialNumber;

/**Person who created or installed this component
 */
@property (nonatomic, retain) Person *creator;

/**Logical device associated with this component (inverse of current component)
 */
@property (nonatomic, retain) LogicalDevice *currentLogicalDevice;

/** Logical device
 */
@property (nonatomic, retain) LogicalDevice *logicalDevice;

/**Service entries for this component
 */
@property (nonatomic, retain) NSSet *serviceEntries;

@end

@interface Component (CoreDataGeneratedAccessors)

/**Add a service entry
 */
- (void)addServiceEntriesObject:(ServiceEntry *)value;

/**Remove a service entry
 */
- (void)removeServiceEntriesObject:(ServiceEntry *)value;

/**Add several service entries
 */
- (void)addServiceEntries:(NSSet *)values;

/**Remove several service entries
 */
- (void)removeServiceEntries:(NSSet *)values;

@end
