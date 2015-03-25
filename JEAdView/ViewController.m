//
//  ViewController.m
//  JEAdView
//
//  Created by 尹现伟 on 15/3/25.
//  Copyright (c) 2015年 上海美问信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "JEAdView.h"

@interface ViewController ()<JEAdViewDelegate>

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = [NSMutableArray arrayWithObjects:@"http://h.hiphotos.baidu.com/image/pic/item/64380cd7912397dd66690c6c5a82b2b7d0a28742.jpg",@"http://f.hiphotos.baidu.com/image/pic/item/dbb44aed2e738bd4de972659a28b87d6277ff920.jpg", @"http://d.hiphotos.baidu.com/image/pic/item/9a504fc2d562853506f0464993ef76c6a7ef6342.jpg",@"http://g.hiphotos.baidu.com/image/pic/item/4bed2e738bd4b31ce96600d384d6277f9e2ff804.jpg",@"http://f.hiphotos.baidu.com/image/pic/item/dbb44aed2e738bd4de972659a28b87d6277ff920.jpg",nil];


    JEAdView *adView = [[JEAdView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 120)];
    adView.delegate = self;
    [self.view addSubview:adView];
    
//    [adView reloadData];
}

#pragma mark - JEAdViewDelegate
- (NSInteger)numberInAdView:(JEAdView *)adView{
    return self.array.count;
}

- (NSString *)imageUrlInAdView:(JEAdView *)adView index:(NSInteger)index{
    return self.array[index];
}

- (void)adView:(JEAdView *)adView didSelectIndex:(NSInteger)index{
    
    NSLog(@"--%ld--",(long)index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
