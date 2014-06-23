//
//  NSString+TNNormalize.m
//  TNKit
//
//  Created by John Jusayan on 4/14/14.
//  Copyright (c) 2014 Treeness, LLC. All rights reserved.
//

#import "NSString+TNNormalize.h"

@implementation NSString (TNNormalize)

- (NSString*)tn_normalizedString
{
    NSMutableString *mutableString = [NSMutableString stringWithString:[self tn_cleanString]];
    CFStringTransform ((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, FALSE);
    CFStringTransform ((CFMutableStringRef)mutableString, NULL, kCFStringTransformStripCombiningMarks, FALSE);
    CFLocaleRef locale = CFLocaleCopyCurrent();
    CFStringLowercase((CFMutableStringRef)mutableString, locale);
    CFRelease(locale);
    NSString *transformedString = [NSString stringWithString:mutableString];

    return transformedString;
}

- (NSString*)tn_cleanString
{
    NSString *cleanString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([cleanString isEqualToString:@""]) return nil;
    
    return cleanString;
}

- (NSString*)tn_normalizedStringURLString
{
    // TODO: Fix this
    NSString *cleanURLString = [self lowercaseString];
    if ([self hasPrefix:@"http://"] || [self hasPrefix:@"https://"]) {
        return cleanURLString;
    }
    else {
        cleanURLString = [@"http://" stringByAppendingString:cleanURLString];
    }
    return cleanURLString;
}

- (BOOL)tn_empty
{
    if ([self tn_cleanString] == nil) return YES;
    return NO;
}


@end
