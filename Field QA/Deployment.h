//
//  Deployment.h
//  Field QA
//
//  Created by John Jusayan on 4/28/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person, Project, ServiceEntry, System;

@interface Deployment : NSManagedObject

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) Person *creator;
@property (nonatomic, retain) Project *project;
@property (nonatomic, retain) ServiceEntry *serviceEntries;
@property (nonatomic, retain) System *systems;
@property (nonatomic, retain) Person *users;

@end
