//
//  InventoryViewController.m
//  Inventory
//
//  Created by Bernard Desert on 3/14/16.
//  Copyright © 2016 Etsy. All rights reserved.
//

#import "InventoryViewController.h"
#import "InventoryItem.h"
#import "InventoryCollectionGenerator.h"
#import "AddInventoryViewController.h"
#import "InventoryItemViewController.h"

// Class extension
@interface InventoryViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray  <InventoryCollection *> *inventoryCollections;
@end

@implementation InventoryViewController


#pragma mark - Actions

- (void)addButtonWasTapped:(id)sender {
    AddInventoryViewController *addInventoryVC = [AddInventoryViewController new];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:addInventoryVC];
    
    // Present "model" view controller
    // Modal controllers temporarly bring us to the new workflow.
    [ self presentViewController:navVC
                        animated:YES
                      completion:nil];
 
}

#pragma mark - View Lifecyle

// I think I change the table or view that loads after clickig on an item below here BD

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                                          target:self
                                                                                          action:@selector(addButtonWasTapped:)];
    
    self.inventoryCollections = [InventoryCollectionGenerator testCollections];
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


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return self.inventoryCollections.count;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return self.inventoryCollections[section].inventoryItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    InventoryCollection *collection = self.inventoryCollections[indexPath.section];
    InventoryItem *item = collection.inventoryItems[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = item.title;

    return cell;
}

#pragma mark - UITableViewDelegate

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return self.inventoryCollections[section].name;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    InventoryCollection *collection = self.inventoryCollections[indexPath.section];
    InventoryItem *item = collection.inventoryItems[indexPath.row];
    
    InventoryItemViewController *viewController = [[InventoryItemViewController alloc] initWithInventoryItem:item];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
