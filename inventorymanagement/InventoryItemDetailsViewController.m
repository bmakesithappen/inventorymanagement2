//
//  InventoryItemsDetailsViewController.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/23/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "InventoryItemDetailsViewController.h"

@interface InventoryItemDetailsViewController ()


@property (nonatomic,strong,) InventoryItem *item;

@end



/*
#pragma mark - Lifecycle

- (instancetype)initWithItem:(InventoryItem *)item {
    self = [super init];
    if (!self) { return nil; }
    
    self.item = item;
    
    return self;
}


#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.item.title;

 
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(20, 80, self.view.bounds.size.width - 40, 45);
    titleLabel.textColor = [UIColor darkTextColor];
    titleLabel.text = self.item.title;
    [self.view addSubview:titleLabel];
    
    UILabel *locationLabel = [[UILabel alloc] init];
    locationLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    locationLabel.textColor = [UIColor darkTextColor];
    locationLabel.font = [UIFont systemFontOfSize:15];
    titleLabel.text = self.inventory;
    [self.view addSubview:locationLabel];
    
*/


