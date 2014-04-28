//
//  System.h
//  Field QA
//
//  Created by John Jusayan on 4/28/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class LogicalDevice, Person, ServiceEntry;

@interface System : NSManagedObject

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) Person *creator;
@property (nonatomic, retain) NSManagedObject *deployment;
@property (nonatomic, retain) LogicalDevice *logicalDevice;
@property (nonatomic, retain) ServiceEntry *serviceEntries;

@end
