//
//  resignViewController.m
//  Mvc
//
//  Created by 岳靖翔 on 2019/9/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "resignViewController.h"

@interface resignViewController ()

@end

@implementation resignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  _resignView = [[ResignView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_resignView];
    [self.resignView.landButton addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
  
}
-(void)zhuce {
    NSDictionary *dict = [[NSDictionary alloc]init];
    dict = @{@"zh":self.resignView.zhTextField.text,@"mm":self.resignView.mmTextField.text};
    NSNotification *notic = [NSNotification notificationWithName:@"send"object:self userInfo:dict];
    [[NSNotificationCenter defaultCenter]postNotification:notic];
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
