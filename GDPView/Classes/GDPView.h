//
//  GDPView.h
//  GDPhotoPicker
//
//  Created by Guan on 2019/5/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 自定义视图抽象父视图
 -1- 链接contentView到xib中的视图.
 -2- 实现 -setup 方法.
 */
@interface GDPView : UIView

@property (strong, nonatomic) IBOutlet UIView *contentView;///< 顶部容器视图

/**
 初始化后的配置
 */
- (void)setup;

/**
 将当前视图添加到一个父视图, 并设置当前视图四边与父视图对应四边一致的自动布局配置.
 
 @param superview 父视图
 */
- (void)addToSuperview:(UIView *)superview;

@end

NS_ASSUME_NONNULL_END
