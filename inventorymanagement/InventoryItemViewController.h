//
//  InventoryItemViewController.h
//  inventorymanagement
//
//  Created by Bernard Desert on 05/19/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InventoryItemViewController : UIViewController

// should Lisitng be InventoryItem

- (instancetype)initWithListing:(NSString *)inventoryItem NS_DESIGNATED_INITIALIZER;

@property (nonatomic, copy, readonly) NSString *inventoryItem;
 

@end

