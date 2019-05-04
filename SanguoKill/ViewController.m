//
//  ViewController.m
//  SanguoKill
//
//  Created by 龙培 on 2019/4/29.
//  Copyright © 2019年 龙培. All rights reserved.
//

#import "ViewController.h"
#import "PlayViewController.h"


@interface ViewController ()
/**
 *  开始按钮
 **/
@property (nonatomic,strong) UIImageView *startImageView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadBackgroundImage];
    
}

- (void)startPlay
{
    PlayViewController *vc = [[PlayViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)loadBackgroundImage
{
    UIImageView *mainBg = [[UIImageView alloc]init];
    mainBg.contentMode = UIViewContentModeScaleAspectFill;
    mainBg.image = [UIImage imageNamed:@"background"];
    mainBg.alpha = 0.8;
    [self.view addSubview:mainBg];
    //元素的布局
    [mainBg mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.view.mas_left).offset(0);
        make.top.equalTo(self.view.mas_top).offset(0);
        make.bottom.equalTo(self.view.mas_bottom).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        
    }];
    self.startImageView.image = [UIImage imageNamed:@"danrenmoshi_putong"];

}

- (UIImageView*)startImageView
{
    if (!_startImageView) {
        _startImageView = [[UIImageView alloc]init];
        _startImageView.userInteractionEnabled = YES;
        [self.view addSubview:_startImageView];
        //元素的布局
        [_startImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(self.view.mas_left).offset(100);
            make.top.equalTo(self.view.mas_top).offset(100);
            make.width.mas_equalTo(200);
            make.height.mas_equalTo(80);
            
        }];
        
        
        
    }
    return _startImageView;
}


@end
