//
//  FormView.m
//  inventorymanagement
//
//  Created by Bernard Desert on 07/26/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "BDFormView.h"

@interface BDFormView () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *formInput;

@end

@implementation BDFormView


- (instancetype)initWithFormItems:(NSArray *)formItems {
    self = [super initWithFrame:CGRectZero];
    if (!self) {
        return nil;
    }
    
    self.formInput = formItems;
    
    self.tableView = [UITableView new];
    self.tableView.frame = self.bounds;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
        
        return self;
    }

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.formInput.count;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [UITableViewCell new];
}

@end
