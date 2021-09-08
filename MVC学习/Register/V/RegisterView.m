//
//  RegisterView.m
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import "RegisterView.h"

@implementation RegisterView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    self.back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.back.frame = CGRectMake(50, 100, 50, 40);
    [self.back setTitle:@"返回" forState:UIControlStateNormal];
    self.back.titleLabel.font = [UIFont systemFontOfSize:20];
    [self addSubview:self.back];
    
    self.sure = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.sure.frame = CGRectMake(200, 450, 50, 40);
    [self.sure setTitle:@"注册" forState:UIControlStateNormal];
    self.sure.titleLabel.font = [UIFont systemFontOfSize:20];
    [self addSubview:self.sure];
    
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.nameTextField.placeholder = @"请输入用户名";
    [self addSubview:self.nameTextField];
    
    self.passTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 270, 200, 50)];
    self.passTextField.placeholder = @"请输入密码";
    self.passTextField.secureTextEntry = YES;
    [self addSubview:self.passTextField];
    
    self.againTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 340, 200, 50)];
    self.againTextField.placeholder = @"请确认密码";
    self.againTextField.secureTextEntry = YES;
    [self addSubview:self.againTextField];
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
