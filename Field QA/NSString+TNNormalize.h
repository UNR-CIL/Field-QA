//
//  NSString+TNNormalize.h
//  TNKit
//
//  Created by John Jusayan on 4/14/14.
//  Copyright (c) 2014 Treeness, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TNNormalize)

- (NSString*)tn_normalizedString;
- (NSString*)tn_cleanString;
- (NSString*)tn_normalizedStringURLString;
- (BOOL)tn_empty;

@end
