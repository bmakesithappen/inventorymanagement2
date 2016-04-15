//
//  InventoryCollection.h
//  inventorymanagement
//
//  Created by Bernard Desert on 04/14/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InventoryItem.h"


@interface InventoryCollection : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSMutableArray <InventoryItem *> *inventoryItems;


@end
