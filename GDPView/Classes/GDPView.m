//
//  GDPView.m
//  GDPhotoPicker
//
//  Created by Guan on 2019/5/19.
//

#import "GDPView.h"
#import <Masonry/Masonry.h>

@implementation GDPView

#pragma mark - 初始化&设置

/** used when call -init or -initWithFrame: */
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initiateFromNib];
    }
    return self;
}

/** used when init from xib or stroyboard */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initiateFromNib];
    }
    return self;
}

- (void)initiateFromNib {
    /* 从xib文件中初始化子视图 */
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    [bundle loadNibNamed:NSStringFromClass(self.class) owner:self options:nil];
    /* 将contentView添加为自己的子视图 */
    [self addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    /* setup */
    [self setup];
}

- (void)setup {
    
}

#pragma mark - Add to super view

- (void)addToSuperview:(UIView *)superview {
    [superview addSubview:self];
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(superview);
    }];
}

@end
