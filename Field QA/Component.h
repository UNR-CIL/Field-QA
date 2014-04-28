//
//  Component.h
//  Field QA
//
//  Created by John Jusayan on 4/28/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


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
@property (nonatomic, retain) NSManagedObject *creator;
@property (nonatomic, retain) NSManagedObject *currentLogicalDevice;
@property (nonatomic, retain) NSManagedObject *logicalDevice;
@property (nonatomic, retain) NSManagedObject *serviceEntries;

@end
