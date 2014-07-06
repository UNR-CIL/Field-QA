//
//  TextFieldTableViewCell.h
//  Field QA
//
//  Created by John Jusayan on 4/14/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextFieldTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *propertyNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *propertyTextField;

@end
