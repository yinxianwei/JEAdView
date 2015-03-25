//
//  JEAdView.h
//  MeiWen
//
//  Created by 尹现伟 on 15/3/24.
//  Copyright (c) 2015年 上海美问信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#define DefineAdImage @""
#define DefineAdTime  4

@class JEAdView;

@protocol JEAdViewDelegate <NSObject>

- (NSInteger)numberInAdView:(JEAdView *)adView;

- (NSString *)imageUrlInAdView:(JEAdView *)adView index:(NSInteger)index;

@optional
- (void)adView:(JEAdView *)adView didSelectIndex:(NSInteger)index;

@end
@interface JEAdView : UIView


@property (nonatomic, weak) id<JEAdViewDelegate>delegate;


@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) UIPageControl *pageControl;

@property (nonatomic, strong) UIImageView *bgImageView;

@property (nonatomic, assign, readonly) int sIndex;

- (void)reloadData;

@end
                                                                                                                                                                                                                                       