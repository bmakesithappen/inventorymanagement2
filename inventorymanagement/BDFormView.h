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

typedef NS_ENUM(NSUInteger, BDFormInputType) {
    
};

typedef NS_OPTIONS(NSUInteger, BDFormInputOption) {
    
};

@end
