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
    
    // I feel this is too many UILabels
    // Would like to move these in order of how they are displayed
    // title , location , purchase , current ,
    // our $$ values are not showing when clinking an item autogenerator not working
    // arc4random ^ 

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
    purchasedValueLabel.frame = CGRectMake(20, 300, self.view.bounds.size.width - 40, 30);
    purchasedValueLabel.textColor = [UIColor darkTextColor];
    purchasedValueLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:purchasedValueLabel];
  
    UILabel *currentValueLabel = [[UILabel alloc] init];
    currentValueLabel.frame = CGRectMake(20, 250, self.view.bounds.size.width - 40, 30);
    currentValueLabel.textColor = [UIColor darkTextColor];
    currentValueLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:currentValueLabel];
    
/*  BOOL for Framed
    
    UILabel *framedLabel = [[UILabel alloc] init];
    framedLabel.frame = CGRectMake(20, 112, self.view.bounds.size.width - 40, 30);
    framedLabel.textColor = [UIColor darkTextColor];
    framedLabel.font = [UIFont systemFontOfSize:15];
    framedLabel.text = self.inventoryItem.? @"Has location" : @"No location";
    [self.view addSubview:framedLabel];
    
 */
    
    
    // do i need this if statement like I do for Physical see line 112
    
    if ([self.inventoryItem conformsToProtocol:@protocol(Size)]) {
        id <Size> sizeItem = (id <Size>)self.inventoryItem;
        UILabel *label = [[UILabel alloc] init];
        label.frame = CGRectMake(20, 200, self.view.bounds.size.width - 40, 30);
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
        
        [self.view addSubview:label];
        
    }

    if ([self.inventoryItem conformsToProtocol:@protocol(Physical)]) {
    id <Physical> physicalItem = (id <Physical>)self.inventoryItem;
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 160, self.view.bounds.size.width - 40, 30);
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
        
        [self.view addSubview:label];
 
}
 
}

@end

