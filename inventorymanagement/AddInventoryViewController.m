//
//  Addinventoryviewcontroller.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/09/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "AddInventoryViewController.h"

@interface AddInventoryViewController ()

@end

@implementation AddInventoryViewController

#pragma mark - Lifecycle

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (!self) { return nil; }
    
    self.title = @"add";
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UITextField *titleTextField = [UITextField new];
    titleTextField.frame = CGRectMake(40, // points from the left side
                                      120, // points down from the top
                                      self.view.bounds.size.width - 80, // width
                                      45); // height
    titleTextField.placeholder = @"title";
    [self.view addSubview:titleTextField];
    
    self.navigationItem.rightBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                    target:self
                                                    action:@selector
       (addButtonWasTapped:)];
    
    self.navigationItem.rightBarButtonItem.accessibilityLabel = @"add button";

    
    self.navigationItem.leftBarButtonItem
    = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                    target:self
                                                    action:@selector
       (cancelButtonWasTapped:)];
    
    self.navigationItem.leftBarButtonItem.accessibilityLabel = @"cancel button";
    
}

#pragma mark - Actions

- (void)addButtonWasTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)cancelButtonWasTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
