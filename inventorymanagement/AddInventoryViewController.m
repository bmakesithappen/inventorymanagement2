//
//  Addinventoryviewcontroller.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/09/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "AddInventoryViewController.h"

@interface AddInventoryViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic,strong) NSArray *pickerData;  // can this be weak 


@end

@implementation AddInventoryViewController

#pragma mark - Lifecycle

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (!self) { return nil; }
    
    self.title = @"add item";
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.pickerData = @[@"Record", @"StatueFigure", @"CD", @"ArtPrint", @"ComicBook"];
    
    self.picker.dataSource = self;
    self.picker.delegate = self;
    
  /*  
      
   UITextField *titleTextField = [UITextField new];
    titleTextField.frame = CGRectMake(40, // points from the left side
                                      120, // points down from the top
                                      self.view.bounds.size.width - 80, // width
                                      45); // height
    titleTextField.placeholder = @"title";
    [self.view addSubview:titleTextField];
   
   UILabel *titleLabel = [[UILabel alloc] init];
   titleLabel.frame = CGRectMake(20, 80, self.view.bounds.size.width - 40, 45);
   titleLabel.textColor = [UIColor darkTextColor];
   titleLabel.text = self.inventoryItem.title;
   [self.view addSubview:titleLabel];

 */
    
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
    
    // why all the curly braces below. cant change this??
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView

{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component

{
    return _pickerData.count;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}


@end
