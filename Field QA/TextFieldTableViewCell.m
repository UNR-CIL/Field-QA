//
//  TextFieldTableViewCell.m
//  Field QA
//
//  Created by John Jusayan on 4/14/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import "TextFieldTableViewCell.h"

@implementation TextFieldTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)saveProperty
{
    [self.detailItem setValue:self.propertyTextField.text forKey:self.associatedPropertyName];
}


@end
