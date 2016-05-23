//
//  InventoryItemsDetailsViewController.h
//  inventorymanagement
//
//  Created by Bernard Desert on 05/23/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

// Added each import because they each have data details page will need accurate??

#import <UIKit/UIKit.h>
#import "InventoryItem.h"
#import "InventoryCollectionGenerator.h"
#import "InventoryCollection.h"

@interface InventoryItemsDetailsViewController : UIViewController

@property (nonatomic,strong,readonly) InventoryItem *items;
@property (nonatomic,strong,readonly) InventoryCollectionGenerator *generator;
@property (nonatomic,strong,readonly) InventoryCollection *collection;

// do i need to create instance types for all three  use same *title

@end
