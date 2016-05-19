//
//  InventoryItemViewController.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/19/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "InventoryItemViewController.h"

@interface InventoryItemViewController ()

@property (nonatomic,copy) NSString *inventoryItem;

@end

@implementation InventoryItemViewController

- (instancetype)initWithListing:(NSString *)inventoryItem {
    self = [super initWithNibName:nil bundle:nil];
    if (!self) {
        return nil;
    }
    
    self.inventoryItem = inventoryItem;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.inventoryItem;
    self.view.backgroundColor = [UIColor whiteColor];
}



@end
