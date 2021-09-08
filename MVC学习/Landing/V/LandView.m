//
//  LandView.m
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import "LandView.h"

@implementation LandView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
    self.nameTextField.placeholder = @"请输入用户名";
    [self addSubview:self.nameTextField];
    
    self.passTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 280, 200, 50)];
    self.passTextField.placeholder = @"请输入密码";
    self.passTextField.secureTextEntry = YES;
    [self addSubview:self.passTextField];
    
    self.landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.landButton setTitle:@"登陆" forState:UIControlStateNormal];
    self.landButton.titleLabel.font = [UIFont systemFontOfSize:20];
    self.landButton.frame = CGRectMake(150, 400, 50, 30);
    [self addSubview:self.landButton];
    
    self.registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.registerButton setTitle:@"注册" forState:UIControlStateNormal];
    self.registerButton.titleLabel.font = [UIFont systemFontOfSize:20];
    self.registerButton.frame = CGRectMake(220, 400, 50, 30);
    [self addSubview:self.registerButton];
    
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
