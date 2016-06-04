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
    
    int startingYPos = 160;
    int yDelta = 20;

    
    self.title = self.inventoryItem.title;
    self.view.backgroundColor = [UIColor whiteColor];

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
    
    if ([self.inventoryItem conformsToProtocol:@protocol(ValuableItem)]) {
    UILabel *purchasedValueLabel = [[UILabel alloc] init];
    purchasedValueLabel.frame = CGRectMake(20, startingYPos, self.view.bounds.size.width - 40, 30);
    purchasedValueLabel.textColor = [UIColor darkTextColor];
    purchasedValueLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:purchasedValueLabel];

    if ([self.inventoryItem conformsToProtocol:@protocol(ValuableItem)]) {
    UILabel *currentValueLabel = [[UILabel alloc] init];
    currentValueLabel.frame = CGRectMake(20, startingYPos, self.view.bounds.size.width - 40, 30);
    currentValueLabel.textColor = [UIColor darkTextColor];
    currentValueLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:currentValueLabel];
        
    }
        startingYPos = startingYPos + yDelta;
        
    }

/*
    if ([self.inventoryItem conformsToProtocol:@protocol(Framable)]) {
    UILabel *framedLabel = [[UILabel alloc] init];
    framedLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    framedLabel.textColor = [UIColor darkTextColor];
    framedLabel.font = [UIFont systemFontOfSize:15];
    // should it be a BOOL or a swtich
    // do i need to update the property to have values like Physical ENUM
    // locationLabel.text = self.inventoryItem. ? @"Has location" : @"No location";
*/
    if ([self.inventoryItem conformsToProtocol:@protocol(Size)]) {
    id <Size> sizeItem = (id <Size>)self.inventoryItem;
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, startingYPos, self.view.bounds.size.width - 40, 30);
    label.textColor = [UIColor darkTextColor];
    label.font = [UIFont systemFontOfSize:15];
        
        switch (sizeItem.height) {
            case StatueFigureSizeSmall:
            label.text = @"Small";
            break;
            case StatueFigureSizeLarge:
            label.text = @"Large";
            break;
            case StatueFigureSizeBust:
            label.text = @"Bust";
            break;
    
        }
        
        startingYPos = startingYPos + yDelta;
        
        [self.view addSubview:label];
    }

    if ([self.inventoryItem conformsToProtocol:@protocol(Physical)]) {
    id <Physical> physicalItem = (id <Physical>)self.inventoryItem;
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, startingYPos, self.view.bounds.size.width - 40, 30);
    label.textColor = [UIColor darkTextColor];
    label.font = [UIFont systemFontOfSize:15];
        
      switch (physicalItem.material) {
            case PhysicalMaterialPlastic:
            label.text = @"Plastic";
            break;
            case PhysicalMaterialCeramic:
            label.text = @"Ceramic";
           break;
 
    }
        
    startingYPos = startingYPos + yDelta;
        
        [self.view addSubview:label];
    }
 
}

@end

