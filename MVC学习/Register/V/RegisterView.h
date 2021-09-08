//
//  RegisterView.h
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterView : UIView

@property (nonatomic, strong) UIButton *back;
@property (nonatomic, strong) UIButton *sure;
@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UITextField *passTextField;
@property (nonatomic, strong) UITextField *againTextField;

@end

NS_ASSUME_NONNULL_END
