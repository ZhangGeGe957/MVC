//
//  RegisterViewController.m
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addUI];
}

- (void)addUI {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.registerView = [[RegisterView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:self.registerView];
    
    [self.registerView.back addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [self.registerView.sure addTarget:self action:@selector(sure:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)sure:(UIButton*)button {
    if ([self.registerView.nameTextField.text isEqualToString:@""] || [self.registerView.passTextField.text isEqualToString:@""] || [self.registerView.againTextField.text isEqualToString:@""]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"请输入您要注册的账号和密码" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    }
    for (int i = 0; i < self.nameArray.count; i++) {
        if ([self.registerView.nameTextField.text isEqualToString:self.nameArray[i]]) {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"该账号已被注册，请重新输入账号" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
            [alert addAction:sure];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }
    if ([self.registerView.passTextField.text isEqualToString:self.registerView.againTextField.text]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"注册成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            [self.delegate transName:self.registerView.nameTextField.text andPass:self.registerView.passTextField.text];
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"两次输入的密码不一致，请确认输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    }
    NSLog(@"sdsd");
}

- (void)back:(UIButton*)button {
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
