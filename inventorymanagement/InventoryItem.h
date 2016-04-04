//
//  InventoryItem.h
//  inventorymanagement
//
//  Created by Bernard Desert on 03/22/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>


@interface InventoryItem : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) CLLocation *location;
@end

// -------------------------------------------------

@protocol ValuableItem <NSObject>
@property (nonatomic, copy) NSNumber *currentValue;
@property (nonatomic, copy) NSNumber *purchasedValue;
@end

typedef NS_ENUM(NSUInteger, PhysicalMaterial) {
    PhysicalMaterialCeramic,
    PhysicalMaterialPlastic,
    PhysicalMaterialWood,
    PhysicalMaterialConcrete
};

@protocol Physical <NSObject>
@property (nonatomic) PhysicalMaterial material;
@end

@protocol Framable <NSObject>
@property (nonatomic) BOOL isFramed;
@end

// -------------------------------------------------

@interface Record: InventoryItem <ValuableItem>

@end

@interface StatueFigure : InventoryItem <ValuableItem, Physical>

@end

@interface CD : InventoryItem

@end

@interface ArtPrint : InventoryItem <ValuableItem, Framable>

@end









