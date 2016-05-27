//  InventoryCollectionGenerator.m
//  inventorymanagement
//
//  Created by Bernard Desert on 04/14/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "InventoryCollectionGenerator.h"

@implementation InventoryCollectionGenerator

+ (NSArray <InventoryCollection*> *)testCollections {
    
    
    NSArray *recordTitles = @[
                              @"YasinGayeTheArrival",
                              @"YasinGayeTheDeparture",
                              @"MobbDeepTheInfamous"
                              ];
    
    InventoryCollection *records = [InventoryCollection new];
    records.name = @"Records";
    for (NSString *title in recordTitles) {
        Record *item = [Record new];
        item.title = title;
        item.purchasedValue = @(arc4random_uniform(50) +10);
        item.currentValue = @(arc4random_uniform(100));
        [records.inventoryItems addObject:item];
    }
    
    NSArray *figureTitles = @[
                              @"BlackCanary",
                              @"BatmanBlackWhiteRoss",
                              @"BatmandBlackWhiteMagnolia"
                              ];
    
    InventoryCollection *figures = [InventoryCollection new];
    figures.name = @"Figures";
    for (NSString *title in figureTitles) {
        StatueFigure *item = [StatueFigure new];
        item.title = title;
        item.purchasedValue = @(arc4random_uniform(50) +10);
        item.currentValue = @(arc4random_uniform(100));
      //  item.material = set bool for material (plastic or ceramic)
      //  item.height = set bool for height (full size or bust or small)
        [figures.inventoryItems addObject:item];
    }
    
    NSArray *cdTitles = @[
                          @"WuTangEnter36Chamber",
                          @"KanyeWestCollegeDropOut",
                          @"RadioheadTheBends"
                          ];
    
    InventoryCollection *cds = [InventoryCollection new];
    cds.name = @"CDS";
    for (NSString *title in cdTitles) {
        CD *item = [CD new];
        item.title = title;
        [cds.inventoryItems addObject:item];
    }
    
    NSArray * printTitles = @[
                              @"TheFlashKeronGrant",
                              @"WonderWomanKeronGrant",
                              @"BlackCanaryArtgem"
                              ];
    
 InventoryCollection *prints = [InventoryCollection new];
    prints.name = @"Prints";
    for (NSString *title in printTitles) {
        ArtPrint *item = [ArtPrint new];
        item.title = title;
        item.purchasedValue = @(arc4random_uniform(50) +10);
        item.currentValue = @(arc4random_uniform(100));
        // item.isFramed = set bool for Framed Yes / no 
        [prints.inventoryItems addObject:item];
    }
    
    NSArray *comicTitles = @[
                             @"MoonKnightEllis1",
                             @"IronFistPowerman1",
                             @"NewMutants98",
                             ];
    
    InventoryCollection *comics = [InventoryCollection new];
    comics.name = @"comics";
    for (NSString *title in comicTitles) {
        ComicBook *item = [ComicBook new];
        item.title = title;
        item.purchasedValue = @(arc4random_uniform(50) +10);
        item.currentValue = @(arc4random_uniform(100));
        [comics.inventoryItems addObject:item];
    }
    
    return @[
             records,
             figures,
             cds,
             prints,
             comics
             ];
}

@end
