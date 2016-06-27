//
//  InventoryViewTest.m
//  inventorymanagement
//
//  Created by Bernard Desert on 06/13/2016.
//  Copyright © 2016 Bernard Desert. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface InventoryViewTest : KIFTestCase

@end

@implementation InventoryViewTest


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    [tester tapViewWithAccessibilityLabel:@"YasinGayeTheArrival"];
    
    [tester tapViewWithAccessibilityLabel:@"add button"];
    
    [tester tapViewWithAccessibilityLabel:@"cancel button"];

    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}


@end
