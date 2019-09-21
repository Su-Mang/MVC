//
//  ResignView.m
//  Mvc
//
//  Created by 岳靖翔 on 2019/9/21.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ResignView.h"

@implementation ResignView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _zhTextField = [[UITextField alloc] init];
        [_zhTextField setFrame:CGRectMake(130, 100, 200, 60)];
        _zhTextField.layer.borderColor = [UIColor blackColor].CGColor;
        _zhTextField.placeholder = @"输入账号";
        [self addSubview:_zhTextField];
        
        _mmTextField = [[UITextField alloc] init];
        [_mmTextField setFrame:CGRectMake(130, 150, 200, 60)];
        _mmTextField.layer.borderColor = [UIColor blackColor].CGColor;
        _mmTextField.placeholder = @"输入密码";
        _mmTextField.secureTextEntry = YES;
        [self addSubview:_mmTextField];
        
        _landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_landButton setFrame:CGRectMake(130, 220, 80, 40)];
        [_landButton setTitle:@"注册按钮" forState:UIControlStateNormal];
        [_landButton setTintColor:[UIColor blackColor]];
        [self addSubview:_landButton];
     
    }
    return self;
}

@end
