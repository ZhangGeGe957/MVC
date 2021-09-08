//
//  LandModel.h
//  MVC学习
//
//  Created by 张佳乔 on 2021/9/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandModel : NSObject

@property (nonatomic, strong) NSMutableArray *nameArray;
@property (nonatomic, strong) NSMutableArray *passArray;

- (void)landModelInit;

@end

NS_ASSUME_NONNULL_END
