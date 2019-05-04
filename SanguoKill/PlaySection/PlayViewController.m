//
//  PlayViewController.m
//  SanguoKill
//
//  Created by 龙培 on 2019/5/4.
//  Copyright © 2019年 龙培. All rights reserved.
//

#import "PlayViewController.h"

@interface PlayViewController ()
/**
 *  背景图片
 **/
@property (nonatomic,strong) UIImageView *mainBgView;


@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadCustomView];
}

- (void)loadCustomView
{
    self.mainBgView.image = [UIImage imageNamed:@"background_battle"];
}


- (UIImageView*)mainBgView
{
    if (!_mainBgView) {
        _mainBgView = [[UIImageView alloc]init];
        [self.view addSubview:_mainBgView];
        //元素的布局
        [_mainBgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.view.mas_left).offset(0);
            make.top.equalTo(self.view.mas_top).offset(0);
            make.bottom.equalTo(self.view.mas_bottom).offset(0);
            make.right.equalTo(self.view.mas_right).offset(0);
            
        }];
    }
    return _mainBgView;
}

@end
