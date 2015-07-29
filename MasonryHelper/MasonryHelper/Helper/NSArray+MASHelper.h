//
//  NSArray+MASHelper.h
//  CommonLib
//
//  Created by bibibi on 15/7/27.
//  Copyright (c) 2015年 bibibi. All rights reserved.
//

typedef NS_ENUM(NSUInteger, AxisType) {
    AxisTypeHorizon,
    AxisTypeVertical
};

@interface NSArray (MASHelper)

/**
 *  根据固定间隙均匀分布
 *
 *  @param axisType     水平/垂直
 *  @param paddingSpace 固定间隙
 *  @param leadSpacing  头/尾间隔
 */
- (void)mas_distributeViewsAlongAxis:(AxisType)axisType withFixedSpacing:(CGFloat)paddingSpace withLeadSpacing:(CGFloat)leadSpacing;

/**
 *  根据固定物件宽度均匀分布
 *
 *  @param axisType    水平/垂直
 *  @param itemLength  物件宽度
 *  @param leadSpacing 头/尾间隔
 */
- (void)mas_distributeViewsAlongAxis:(AxisType)axisType withFixedItemLength:(CGFloat)itemLength withLeadSpacing:(CGFloat)leadSpacing;

@end
