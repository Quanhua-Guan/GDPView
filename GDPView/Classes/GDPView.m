//
//  GDPView.m
//  GDPhotoPicker
//
//  Created by Guan on 2019/5/19.
//

#import "GDPView.h"

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
    /* Init contentView from Xib */
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    [bundle loadNibNamed:NSStringFromClass(self.class) owner:self options:nil];
    /* Add contentView as subview */
    [self addSubview:_contentView];
    /* Layout */
    [self layoutView:_contentView];
    
    /* setup */
    [self setup];
}

- (void)setup {
    
}

- (void)layoutView:(UIView *)view {
    NSDictionary *views = NSDictionaryOfVariableBindings(view);
    NSArray<NSString *> *formatStrings = @[@"|-[view]-|", @"V:|-[view]-|"];
    for (NSString *formatString in formatStrings) {
        NSArray<NSLayoutConstraint *> *constraints =
        [NSLayoutConstraint constraintsWithVisualFormat:formatString
                                                options:NSLayoutFormatAlignAllTop
                                                metrics:nil
                                                  views:views];
        for (NSLayoutConstraint *constraint in constraints) {
            constraint.active = YES;
        }
    }
}

#pragma mark - Add to super view

- (void)addToSuperview:(UIView *)superview {
    [superview addSubview:self];
    [self layoutView:self];
}

@end
