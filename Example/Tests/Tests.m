//
//  MissingAnchorsTests.m
//  MissingAnchorsTests
//
//  Created by Anton Bukov on 12/20/2015.
//  Copyright (c) 2015 Anton Bukov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <MissingAnchors/MissingAnchors.h>

@interface Tests : XCTestCase

@property (strong, nonatomic) UIView *view;

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSizeConst
{
    UIImageView *imageView1 = [[UIImageView alloc] init];
    [self.view addSubview:imageView1];
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    [imageView1.sizeAnchor constraintsEqualToConstant:CGSizeMake(50, 60)].active = YES;
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    [self.view addSubview:imageView2];
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    @[[imageView2.widthAnchor constraintEqualToConstant:50],
      [imageView2.heightAnchor constraintEqualToConstant:60]].active = YES;
    
    [self.view layoutIfNeeded];
    XCTAssert(CGSizeEqualToSize(imageView1.bounds.size, imageView2.bounds.size), "Frame check");
    
    [imageView1 removeFromSuperview];
    [imageView2 removeFromSuperview];
}

- (void)testEdgesConst
{
    UIImageView *imageView1 = [[UIImageView alloc] init];
    [self.view addSubview:imageView1];
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    [imageView1.edgesAnchor constraintsEqualToConstant:UIEdgeInsetsMake(10, 20, 30, 40)].active = YES;
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    [self.view addSubview:imageView2];
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    @[[imageView2.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:10],
      [imageView2.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20],
      [imageView2.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-30],
      [imageView2.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40]].active = YES;
    
    [self.view layoutIfNeeded];
    XCTAssert(CGRectEqualToRect(imageView1.frame, imageView2.frame), "Frame check");
    
    [imageView1 removeFromSuperview];
    [imageView2 removeFromSuperview];
}

@end

