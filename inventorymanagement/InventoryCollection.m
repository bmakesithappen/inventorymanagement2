//
//  InventoryCollection.m
//  inventorymanagement
//
//  Created by Bernard Desert on 04/14/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "InventoryCollection.h"

@implementation InventoryCollection

- (instancetype)init {
    self = [super init];
    if (!self) { return nil; }
    
    self.inventoryItems = [NSMutableArray new];
    
    return self;
}

@end
