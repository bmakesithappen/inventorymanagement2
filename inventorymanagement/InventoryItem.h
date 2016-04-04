//
//  InventoryItem.h
//  inventorymanagement
//
//  Created by Bernard Desert on 03/22/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InventoryItem : NSObject
@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) NSString * location;

@end

@protocol ValuableItem <NSObject>
@property (nonatomic, copy) NSNumber *currentValue;
@property (nonatomic, copy) NSNumber *purchasedValue;
@end

@protocol composition <NSObject>
@property (nonatomic, copy) NSString *ceramic;
@property (nonatomic, copy) NSString *plastic;


@end

@protocol framed <NSObject>
@property (nonatomic, copy) NSString *framed;


@end

// do title and location get applied to below

@interface record: InventoryItem <ValuableItem>

@end

@interface statueFigure : InventoryItem <ValuableItem,composition>

@end

@interface cds : InventoryItem //other properities dont matter besdides location and title

@end

@interface artPrint : InventoryItem <ValuableItem,framed>

@end









