//
//  customCell.h
//  simpleCalc
//
//  Created by Abd Al on 02/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *itemName;
@property (weak, nonatomic) IBOutlet UITextField *itemQty;
@property (weak, nonatomic) IBOutlet UITextField *itemCost;

@end
