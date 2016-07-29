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

@end

@implementation BDFormView


- (instancetype)initWithFormItems:(NSArray *)formItems {
    self = [super initWithFrame:CGRectZero];
    if (!self) {
        return nil;
    }
    return self;
}

/* + (instancetype) formInputWithTitle: (NSString *)title type:(BDFormInput)type
                            options:(BDFormInputOption)option;
*/

@end
