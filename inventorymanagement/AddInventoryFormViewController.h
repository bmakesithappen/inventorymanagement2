//
//  InventoryAddFormViewController.h
//  inventorymanagement
//
//  Created by Bernard Desert on 07/01/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddInventoryFormViewController : UIViewController

- (instancetype) initWithInventoryItemType: (NSInteger)inventoryItemType;

@end

typedef NS_ENUM(NSInteger, InventoryItemType) {
    InventoryItemTypeRecord,
    InventoryItemTypeStatueFigure,
    InventoryItemTypeCD,
    InventoryItemTypeArtPrint,
    InventoryItemTypeComicBook,
};
