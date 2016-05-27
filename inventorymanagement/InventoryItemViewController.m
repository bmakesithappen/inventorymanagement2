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
    self.view.backgroundColor = [UIColor blueColor];
    

    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame = CGRectMake(20, 80, self.view.bounds.size.width - 40, 45);
    titleLabel.textColor = [UIColor darkTextColor];
    titleLabel.text = self.inventoryItem.title;
    [self.view addSubview:titleLabel];
    
    UILabel *locationLabel = [[UILabel alloc] init];
    locationLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    locationLabel.textColor = [UIColor darkTextColor];
    locationLabel.font = [UIFont systemFontOfSize:15];
    locationLabel.text = self.inventoryItem.location ? @"Has location" : @"No location";
    [self.view addSubview:locationLabel];
        
    UILabel *purchasedValueLabel = [[UILabel alloc] init];
    purchasedValueLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    purchasedValueLabel.textColor = [UIColor darkTextColor];
    purchasedValueLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:purchasedValueLabel];

/*
    UILabel *materialLabel = [[UILabel alloc] init];
    materialLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    materialLabel.textColor = [UIColor darkTextColor];
    materialLabel.font = [UIFont systemFontOfSize:15];
    materialLabel = self.inventoryItem.materialLabel ? @"Ceramic" : @"Plastic";
    [self.view addSubview:materialLabel.Label];
 
    UILabel *isFramedLabel = [[UILabel alloc] init];
    isFramedLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    isFramedLabel.textColor = [UIColor darkTextColor];
    isFramedLabel .font = [UIFont systemFontOfSize:15];
    isFramedLabel = self.inventoryItem.isFramedLabel  ? @"isFramed" : @"notFramed"; (just do yes or no?)
    [self.view addSubview:heightLabel.Label];
 
*/
    
    
    if ([self.inventoryItem isKindOfClass:[Record class]]) {
        // Add another label that has additional details...
    } else if ([self.inventoryItem isKindOfClass:[CD class]]) {
        // CD stuff...
    }


}



@end
