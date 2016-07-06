//
//  Addinventoryviewcontroller.m
//  inventorymanagement
//
//  Created by Bernard Desert on 05/09/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import "AddInventoryViewController.h"
#import "AddInventoryFormViewController.h"

@interface AddInventoryViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic,strong) NSArray *pickerData;  // can this be weak

@property (nonatomic,strong) UIPickerView *picker;

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
    
    
    self.picker = [UIPickerView new];
    self.picker.center = self.view.center;
    
    self.pickerData = @[@"Record", @"StatueFigure", @"CD", @"ArtPrint", @"ComicBook"];
    
    [self.view addSubview:self.picker];
    
    self.picker.delegate = self;
    self.picker.dataSource = self;


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
    
    //Instatiate InventoryAddFormView Controller
    //Push from ADIViewC to IAFVCgit
    // I know this section is off just cant get what to do
 
  //  AddInventoryViewController *viewController = [[AddInventoryFormViewController alloc] initWithInventoryItem:item];
  //  [self.navigationController pushViewController:viewController animated:YES];
    
}

- (void)cancelButtonWasTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    // distinct methods each doing their own thing
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
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
