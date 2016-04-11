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
    
    
    Record *item1 = [Record new];
    item1.title = @"YasinGayeTheArrival";
    Record *item2 = [Record new];
    item2.title = @"YasinGayeTheDeparture";
    Record *item3 = [Record new];
    item3.title = @"MobbDeepTheInfamous";
    
    StatueFigure *item4 = [StatueFigure new];
    item4.title = @"BlackCanary";
    StatueFigure *item5 = [StatueFigure new];
    item5.title = @"BatmanBlackWhiteRoss";
    StatueFigure *item6 = [StatueFigure new];
    item6.title = @"BatmandBlackWhiteMagnolia";
    
    CD *item7 = [CD new];
    item7.title = @"WuTangEnter36Chamber";
    CD *item8 = [CD new];
    item8.title = @"KanyeWestCollegeDropOut";
    CD *item9= [CD new];
    item9.title = @"RadioheadTheBends";
    
    ArtPrint *item10 = [ArtPrint new];
    item10.title = @"TheFlashKeronGrant";
    ArtPrint *item11 = [ArtPrint new];
    item11.title = @"WonderWomanKeronGrant";
    ArtPrint *item12 = [ArtPrint new];
    item12.title = @"BlackCanaryArtgem";
    
    ComicBook *item13 = [ComicBook new];
    item13.title = @"MoonKnightEllis1";
    ComicBook *item14 = [ComicBook new];
    item14.title = @"IronFistPowerman1";
    ComicBook *item15 = [ComicBook new];
    item15.title = @"NewMutants98";
    
    self.inventoryItems = @[
                            item1,
                            item2,
                            item3,
                            item4,
                            item5,
                            item6,
                            item7,
                            item8,
                            item9,
                            item10,
                            item11,
                            item12,
                            item13,
                            item14,
                            item15,
                            ];
    
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
