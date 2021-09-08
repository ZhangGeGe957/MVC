//
//  LandViewController.m
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import "LandViewController.h"
#import "LandModel.h"
#import "LandView.h"
#import "RegisterViewController.h"

@interface LandViewController ()<RegisterViewDelegate>

@property (nonatomic, assign) NSInteger flag;
@property (nonatomic, strong) LandView *landView;
@property (nonatomic, strong) LandModel *landModel;

@end

@implementation LandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addUI];
}

- (void)addUI {
    
    self.landView = [[LandView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:self.landView];
    
    [self.landView.landButton addTarget:self action:@selector(land:) forControlEvents:UIControlEventTouchUpInside];
    [self.landView.registerButton addTarget:self action:@selector(registerName:) forControlEvents:UIControlEventTouchUpInside];
    
    self.landModel = [[LandModel alloc] init];
    [self.landModel landModelInit];
}

- (void)land:(UIButton*)button {
    for (int i = 0; i < self.landModel.nameArray.count; i++) {
        if ([self.landView.nameTextField.text isEqualToString:self.landModel.nameArray[i]] && [self.landView.passTextField.text isEqualToString:self.landModel.passArray[i]]) {
            self.flag = 1;
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"登陆成功" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
            [alert addAction:sure];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }
    if (!self.flag) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"输入的账号或用户名有误，请重新输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    }
    self.flag = 0;
}

- (void)registerName:(UIButton*)button {
    RegisterViewController *view = [[RegisterViewController alloc] init];
    view.modalPresentationStyle = UIModalPresentationFullScreen;
    view.delegate = self;
    view.nameArray = self.landModel.nameArray;
    [self presentViewController:view animated:YES completion:nil];
}

- (void)transName:(NSString *)name andPass:(NSString *)pass {
    [self.landModel.nameArray addObject:name];
    [self.landModel.passArray addObject:pass];
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
