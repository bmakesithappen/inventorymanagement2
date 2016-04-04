//
//  InventoryViewController.m
//  Inventory
//
//  Created by Bernard Desert on 3/14/16.
//  Copyright © 2016 Etsy. All rights reserved.
//

#import "InventoryViewController.h"
#import "InventoryItem.h"

// Class extension
@interface InventoryViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *inventoryItems;
@end

@implementation InventoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    InventoryItem *item1 = [InventoryItem new];
    item1.title = @"Hat";
    InventoryItem *item2 = [InventoryItem new];
    item2.title = @"Y The Last Man";
    ArtPrint *item3 = [ArtPrint new];
    item3.title = @"Moist Print";
    
    self.inventoryItems = @[
                            item1,
                            item2,
                            item3
                            ];
    
    self.title = @"Inventory";
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"cell"];
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return self.InventoryItem.count;
//}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.inventoryItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InventoryItem *item = self.inventoryItems[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = item.title;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Row %d was tapped.", (int)indexPath.row);
}

@end
