//
//  InventoryItemViewController.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/19/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "InventoryItemViewController.h"

@interface InventoryItemViewController ()

@property (nonatomic,strong) InventoryItem *inventoryItem;

@end

@implementation InventoryItemViewController

#pragma mark - Lifecyle

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    return [self initWithInventoryItem:nil];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    return [self initWithInventoryItem:nil];
}

- (instancetype)initWithInventoryItem:(InventoryItem *)inventoryItem {
    self = [super initWithNibName:nil bundle:nil];
    if (!self) {
        return nil;
    }
    self.inventoryItem = inventoryItem;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.inventoryItem.title;
    self.view.backgroundColor = [UIColor whiteColor];
}



@end
