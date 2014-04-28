//
//  LogicalDevice.h
//  Field QA
//
//  Created by John Jusayan on 4/28/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Component;

@interface LogicalDevice : NSManagedObject

@property (nonatomic, retain) NSDate * creationDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSSet *components;
@property (nonatomic, retain) Component *currentComponent;
@property (nonatomic, retain) NSManagedObject *system;
@end

@interface LogicalDevice (CoreDataGeneratedAccessors)

- (void)addComponentsObject:(Component *)value;
- (void)removeComponentsObject:(Component *)value;
- (void)addComponents:(NSSet *)values;
- (void)removeComponents:(NSSet *)values;

@end
