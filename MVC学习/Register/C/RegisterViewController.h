//
//  RegisterViewController.h
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import <UIKit/UIKit.h>
#import "RegisterView.h"
#import "RegisterModel.h"

@protocol RegisterViewDelegate <NSObject>

- (void)transName:(NSString*)name andPass:(NSString*)pass;

@end

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController

@property (nonatomic, strong) RegisterModel *registerModel;
@property (nonatomic, strong) RegisterView *registerView;
@property (nonatomic, strong) id<RegisterViewDelegate> delegate;
@property (nonatomic, strong) NSMutableArray *nameArray;

@end

NS_ASSUME_NONNULL_END
