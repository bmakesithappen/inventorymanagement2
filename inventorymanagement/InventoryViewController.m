//
//  InventoryViewController.m
//  Inventory
//
//  Created by Bernard Desert on 3/14/16.
//  Copyright © 2016 Etsy. All rights reserved.
//

#import "InventoryViewController.h"
#import "InventoryItem.h"

// Class extension
@interface InventoryViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *inventoryItems;
@end

@implementation InventoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *recordTitles = @[
        @"YasinGayeTheArrival",
        @"YasinGayeTheDeparture",
        @"MobbDeepTheInfamous"
    ];
    
    NSMutableArray *records = [NSMutableArray new];
    for (NSString *title in recordTitles) {
        Record *item = [Record new];
        item.title = title;
        [records addObject:item];
    }

    NSArray *figureTitles = @[
        @"BlackCanary",
        @"BatmanBlackWhiteRoss",
        @"BatmandBlackWhiteMagnolia"
    ];
    
    NSMutableArray *figures = [NSMutableArray new];
    for (NSString *title in figureTitles) {
        StatueFigure *item = [StatueFigure new];
        item.title = title;
        [figures addObject:item];
    }
    
    NSArray *cdTitles = @[
        @"WuTangEnter36Chamber",
        @"KanyeWestCollegeDropOut",
        @"RadioheadTheBends"
    ];
    
    NSMutableArray *cds = [NSMutableArray new];
    for (NSString *title in cdTitles) {
        CD *item = [CD new];
        item.title = title;
        [cds addObject:item];
    }
    
    NSArray * printTitles = @[
             @"TheFlashKeronGrant",
             @"WonderWomanKeronGrant",
             @"BlackCanaryArtgem"
    ];
    
    NSMutableArray *prints = [NSMutableArray new];
    for (NSString *title in printTitles) {
        ArtPrint *item = [ArtPrint new];
        item.title = title;
        [prints addObject:item];
    }
    
    NSArray *comicTitles = @[
            @"MoonKnightEllis1",
            @"IronFistPowerman1",
            @"NewMutants98",
    ];
   
    NSMutableArray *comics = [NSMutableArray new];
    for (NSString *title in comicTitles) {
        ComicBook *item = [ComicBook new];
        item.title = title;
        [comics addObject:item];
    }
    
    NSArray *allItems = @[
       records,
       figures,
       cds,
       prints,
       comics
    ];
    
    NSMutableArray *flattenedItems = [NSMutableArray new];
    for (NSArray *list in allItems) {
        [flattenedItems addObjectsFromArray:list];
    }
    
    self.inventoryItems = flattenedItems;
    
    self.title = @"Inventory";
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"cell"];
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return self.InventoryItem.count;
//}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.inventoryItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    InventoryItem *item = self.inventoryItems[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = item.title;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Row %d was tapped.", (int)indexPath.row);
}

@end
