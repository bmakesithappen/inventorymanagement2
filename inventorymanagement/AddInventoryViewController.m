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

/*

# pragma actions 

 - (void)addButtonWasTapped:(id)sender {
    AddInventoryViewController *addInventoryVC = [AddInventoryViewController new];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:addInventoryVC];
    
    // Present "model" view controller
    // Modal controllers temporarly bring us to the new workflow.
    [ self presentViewController:navVC
                        animated:YES
                      completion:nil];
    
}


#pragma View Lifecyle
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 
 self.navigationItem.leftBarButtonItem
 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
 target:self
 action:@selector(addButtonWasTapped:)];
 
 
*/

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // Give the add VC a title
 
    // Create a cancael button that brings you
    // back to the previous screen
 
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField *titleTextField = [UITextField new];
    titleTextField.frame = CGRectMake(40, // points from the left side
                                      120, // points down from the top
                                      self.view.bounds.size.width - 80, // width
                                      45); // height
    titleTextField.placeholder = @"title";
    [self.view addSubview:titleTextField];
}

    
- (void)cancelButtonWasTapped:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
        
}

@end
