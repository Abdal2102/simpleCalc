//
//  ViewController.m
//  simpleCalc
//
//  Created by Abd Al on 02/08/2013.
//  Copyright (c) 2013 Abd Al. All rights reserved.
//

#import "ViewController.h"
#import "customCell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize itemsTable, listedItems, totalSum;


NSMutableArray *itemsList;
NSMutableArray *itemNameA;
NSMutableArray *itemQtyA;
NSMutableArray *itemCostA;



- (void)viewDidLoad
{
    self.itemsTable.dataSource=self;
    self.itemsTable.delegate = self;
    
    itemNameA = [[NSMutableArray alloc]initWithObjects:itemName, nil];
    itemQtyA = [[NSMutableArray alloc]initWithObjects:itemQty, nil];
    itemCostA =[[NSMutableArray alloc]initWithObjects:itemCost, nil];
    
        
    itemsList = [[NSMutableArray alloc]initWithObjects:itemQtyA, itemNameA, itemCostA, nil];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    //return 10;
    return [itemsList count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"Cell";
    itemCell = [itemsTable dequeueReusableCellWithIdentifier:cellID];
    if (!itemCell) {
        itemCell = [[customCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    int itmQty;
    itmQty = [itemQty.text integerValue];
    double itmCost;
    itmCost= [itemCost.text doubleValue];
    NSString *itmName = [[NSString alloc] init];
    itmName = itemName.text;
    
        
    return itemCell;
}



- (IBAction)total:(id)sender {
   //
    for (int i=0; i<itemsList.count; i++) {
        int qtySum = [itemQty.text integerValue];
        qtySum+=qtySum;
        
        double costSum = [itemCost.text integerValue];
        costSum+=costSum;
        
        listedItems.text = [[NSString alloc]initWithFormat:@"%@ %@ %@", itemName.text, itemQty.text,itemCost.text];
        
        totalSum.text = [[NSString alloc]initWithFormat:@"Total Quantity: %i Total Cost: %f", qtySum, costSum];
    }
    
}

- (IBAction)addCell:(UIBarButtonItem *)sender {
    

}

- (IBAction)editTable:(UIBarButtonItem *)sender {
    
}
@end
