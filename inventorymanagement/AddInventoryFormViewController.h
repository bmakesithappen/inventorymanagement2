//
//  InventoryAddFormViewController.h
//  inventorymanagement
//
//  Created by Bernard Desert on 07/01/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InventoryItem.h"


@interface AddInventoryFormViewController : UIViewController

@property (nonatomic, readonly) InventoryItemType inventoryItemType;

-(instancetype) initWithInventoryItemType:(enum InventoryItemType)inventoryItemType;

@end

