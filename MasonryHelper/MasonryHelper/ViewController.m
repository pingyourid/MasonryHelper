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

    NSMutableArray *arr = @[].mutableCopy;
    for (int i = 0; i < 4; i++) {
        UIView *view = UIView.new;
        view.backgroundColor = [self randomColor];
        view.layer.borderColor = UIColor.blackColor.CGColor;
        view.layer.borderWidth = 2;
        [self.view addSubview:view];
        [arr addObject:view];
    }
    
    unsigned int type  = arc4random()%4;

    switch (type) {
        case 0:
            [arr mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:20 leadSpacing:5 tailSpacing:5];
            [arr makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@60);
                make.height.equalTo(@60);
            }];
            break;
        case 1:
            [arr mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:20 leadSpacing:5 tailSpacing:5];
            [arr makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(@0);
                make.width.equalTo(@60);
            }];
            break;
        case 2:
            [arr mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedItemLength:30 leadSpacing:50 tailSpacing:100];
            [arr makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@60);
                make.height.equalTo(@60);
            }];
            break;
        case 3:
            [arr mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedItemLength:30 leadSpacing:200 tailSpacing:100];
            [arr makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(@0);
                make.width.equalTo(@60);
            }];
            break;
            
        default:
            break;
    }
}

- (UIColor *)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

@end
