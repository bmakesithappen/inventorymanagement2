//
//  FormView.h
//  inventorymanagement
//
//  Created by Bernard Desert on 07/26/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDFormView : UIView

-(instancetype) initWithFormItems:(NSArray *)formItems;

@end

typedef NS_ENUM(NSUInteger, BDFormInputType) {
    BDFormInputTypeTexField,
    BDFormInputTypeSwitch
   
};

typedef NS_OPTIONS(NSUInteger, BDFormInputOption) {
    BDFormInputOptionCurrency
    
};

@interface BDFormInput : NSObject

@end
