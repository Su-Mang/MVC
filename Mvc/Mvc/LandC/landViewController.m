//
//  landViewController.m
//  Mvc
//
//  Created by 岳靖翔 on 2019/9/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "landViewController.h"
#import "resignViewController.h"
@interface landViewController ()

@end

@implementation landViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
      [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(recive:) name:@"send" object:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _landView = [[landview alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_landView];
    [_landView.resignButton addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
    [_landView.resignButton addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
}

-(void)recive:(NSNotification*)noti
{
   
    NSDictionary*dic = noti.userInfo;
    _landView.zhTextField.text = dic[@"zh"];
    _landView.mmTextField.text = dic[@"mm"];
   
   
}
-(void)zhuce
{
    resignViewController *zhuceC = [[resignViewController alloc]init];
    [self presentViewController:zhuceC animated:YES completion:nil];
}
-(void)denglu
{
    NSLog(@"登陆");
}

@end
