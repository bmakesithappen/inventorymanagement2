//
//  InventoryItemsDetailsViewController.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/23/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "InventoryItemsDetailsViewController.h"

@interface InventoryItemsDetailsViewController ()

@end

@implementation InventoryItemsDetailsViewController



#pragma mark - Lifecycle

- (instancetype)initWithItems:(InventoryItem *)items {
    self = [super init];
    if (!self) { return nil; }
    
    _items = items;
    
    return self;
}

/*
 
 This wont work till I change the app delegate in InventoryItemViewController
 
#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.inventoryItem.title;

 
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.frame = CGRectMake(20, 80, self.view.bounds.size.width - 40, 45);
    nameLabel.textColor = [UIColor darkTextColor];
    nameLabel.text = self.staff.fullName;
    [self.view addSubview:nameLabel];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    titleLabel.textColor = [UIColor darkTextColor];
    titleLabel.font = [UIFont systemFontOfSize:15];
    titleLabel.text = self.staff.title;
    [self.view addSubview:titleLabel];
    
    UILabel *emailLabel = [[UILabel alloc] init];
    emailLabel.frame = CGRectMake(20, 132, self.view.bounds.size.width - 40, 30);
    emailLabel.textColor = [UIColor darkTextColor];
    emailLabel.font = [UIFont systemFontOfSize:15];
    emailLabel.text = self.staff.email;
    [self.view addSubview:emailLabel];
}
 
*/

@end
