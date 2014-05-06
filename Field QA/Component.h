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

@property (nonatomic, retain) NSNumber * active;
@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSNumber * height;
@property (nonatomic, retain) NSDate * installationDate;
@property (nonatomic, retain) NSString * locationNotes;
@property (nonatomic, retain) NSString * model;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSString * serialNumber;
@property (nonatomic, retain) NSString * uniqueIdentifier;
@property (nonatomic, retain) Person *creator;
@property (nonatomic, retain) LogicalDevice *currentLogicalDevice;
@property (nonatomic, retain) LogicalDevice *logicalDevice;
@property (nonatomic, retain) NSSet *serviceEntries;
@end

@interface Component (CoreDataGeneratedAccessors)

- (void)addServiceEntriesObject:(ServiceEntry *)value;
- (void)removeServiceEntriesObject:(ServiceEntry *)value;
- (void)addServiceEntries:(NSSet *)values;
- (void)removeServiceEntries:(NSSet *)values;

@end
