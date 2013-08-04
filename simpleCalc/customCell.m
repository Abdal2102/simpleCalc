//
//  customCell.m
//  simpleCalc
//
//  Created by Abd Al on 02/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import "customCell.h"

@implementation customCell

@synthesize itemName, itemCost, itemQty;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
