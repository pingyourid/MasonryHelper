//
//  NSArray+MASHelper.h
//  CommonLib
//
//  Created by bibibi on 15/7/27.
//  Copyright (c) 2015年 bibibi. All rights reserved.
//

typedef NS_ENUM(NSUInteger, MASAxisType) {
    MASAxisTypeHorizon,
    MASAxisTypeVertical
};

@interface NSArray (MASHelper)

/**
 *  distribute with fixed spaceing
 *
 *  @param axisType     horizon/vertical
 *  @param paddingSpace space
 *  @param leadSpacing  head
 *  @param tailSpacing  tail
 */
- (void)mas_distributeViewsAlongAxis:(MASAxisType)axisType withFixedSpacing:(CGFloat)paddingSpace leadSpacing:(CGFloat)leadSpacing tailSpacing:(CGFloat)tailSpacing;

/**
 *  distribute with fixed item size
 *
 *  @param axisType    horizon/vertical
 *  @param itemLength  item size
 *  @param leadSpacing head
 *  @param tailSpacing  tail
 */
- (void)mas_distributeViewsAlongAxis:(MASAxisType)axisType withFixedItemLength:(CGFloat)itemLength leadSpacing:(CGFloat)leadSpacing tailSpacing:(CGFloat)tailSpacing;

@end
