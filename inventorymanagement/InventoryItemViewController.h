//
//  InventoryItemViewController.h
//  inventorymanagement
//
//  Created by Bernard Desert on 05/19/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InventoryItem.h"

@interface InventoryItemViewController : UIViewController

- (instancetype)initWithInventoryItem:(InventoryItem *)inventoryItem NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong, readonly) InventoryItem *inventoryItem;

@end

