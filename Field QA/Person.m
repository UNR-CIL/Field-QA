//
//  Person.m
//  Field QA
//
//  Created by John Jusayan on 4/29/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import "Person.h"
#import "Component.h"
#import "Deployment.h"
#import "Project.h"
#import "ServiceEntry.h"
#import "System.h"


@implementation Person

@dynamic uniqueIdentifier;
@dynamic email;
@dynamic firstName;
@dynamic lastName;
@dynamic phone;
@dynamic components;
@dynamic createdDeployments;
@dynamic managedDeployments;
@dynamic projects;
@dynamic serviceEntries;
@dynamic serviceEntriesCreated;
@dynamic systems;

@end
