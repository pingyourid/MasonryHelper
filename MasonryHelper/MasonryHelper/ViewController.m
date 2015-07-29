//
//  ViewController.m
//  MasonryHelper
//
//  Created by bibibi on 15/7/30.
//  Copyright (c) 2015年 bibibi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIView *greenView = UIView.new;
    greenView.backgroundColor = UIColor.greenColor;
    greenView.layer.borderColor = UIColor.blackColor.CGColor;
    greenView.layer.borderWidth = 2;
    [self.view addSubview:greenView];

    UIView *redView = UIView.new;
    redView.backgroundColor = UIColor.redColor;
    redView.layer.borderColor = UIColor.blackColor.CGColor;
    redView.layer.borderWidth = 2;
    [self.view addSubview:redView];

    UIView *blueView = UIView.new;
    blueView.backgroundColor = UIColor.blueColor;
    blueView.layer.borderColor = UIColor.blackColor.CGColor;
    blueView.layer.borderWidth = 2;
    [self.view addSubview:blueView];

    NSArray *arr = @[ greenView, redView, blueView ];

    //垂直方向定view宽度
    [arr mas_distributeViewsAlongAxis:AxisTypeVertical withFixedItemLength:50 withLeadSpacing:10];
    [arr makeConstraints:^(MASConstraintMaker *make) {
      make.left.equalTo(@0);
      make.width.equalTo(@60);
    }];

    //水平方向定view宽度
    //    [arr mas_distributeViewsAlongAxis:AxisTypeHorizon withFixedItemLength:50 withLeadSpacing:10];
    //    [arr makeConstraints:^(MASConstraintMaker *make) {
    //        make.top.equalTo(self.view.top);
    //        make.height.equalTo(@60);
    //    }];

    //垂直方向定间距
    //    [arr mas_distributeViewsAlongAxis:AxisTypeVertical withFixedSpacing:30 withLeadSpacing:0];
    //    [arr makeConstraints:^(MASConstraintMaker *make) {
    //        make.left.equalTo(@0);
    //        make.width.equalTo(@60);
    //    }];

    //水平方向定间距
    //    [arr mas_distributeViewsAlongAxis:AxisTypeHorizon withFixedSpacing:30 withLeadSpacing:0];
    //    [arr makeConstraints:^(MASConstraintMaker *make) {
    //        make.top.equalTo(self.view.top);
    //        make.height.equalTo(@60);
    //    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
