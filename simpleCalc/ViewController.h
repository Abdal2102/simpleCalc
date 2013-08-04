//
//  ViewController.h
//  simpleCalc
//
//  Created by Abd Al on 02/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customCell.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    customCell * itemCell;
    UITextField *itemName;
    UITextField *itemQty;
    UITextField *itemCost;
}

@property (weak, nonatomic) IBOutlet UITableView *itemsTable;

- (IBAction)total:(id)sender;
- (IBAction)addCell:(UIBarButtonItem *)sender;
- (IBAction)editTable:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UILabel *listedItems;
@property (weak, nonatomic) IBOutlet UILabel *totalSum;
@end
