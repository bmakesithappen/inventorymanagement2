//
//  InventoryAddFormViewController.m
//  inventorymanagement
//
//  Created by Bernard Desert on 07/01/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "AddInventoryFormViewController.h"
#import "BDFormView.h"


// Class Exentsion
@interface AddInventoryFormViewController ()

@property (nonatomic) InventoryItemType inventoryItemType;

@property (nonatomic,strong) BDFormView *formView; // property holds formview

@end

@implementation AddInventoryFormViewController

-(instancetype) initWithInventoryItemType:(enum InventoryItemType)inventoryItemType {
    self = [super init];
    if (!self) { return nil; }
    
    self.inventoryItemType = inventoryItemType;
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

   self.formView = [[BDFormView alloc] initWithFormItems:@[] ] ;
    self.formView.frame = self.formView.bounds;
    [self.view addSubview:self.formView];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
