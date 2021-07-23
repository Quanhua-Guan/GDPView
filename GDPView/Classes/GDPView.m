//
//  GDPView.m
//  GDPhotoPicker
//
//  Created by Guan on 2019/5/19.
//

#import "GDPView.h"

@implementation GDPView

#pragma mark - Init & Setup

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

- (NSBundle *)xibBundle {
    return [NSBundle bundleForClass:self.class];
}

- (void)initiateFromNib {
    /* Init contentView from Xib */
    NSBundle *bundle = self.xibBundle;
    [bundle loadNibNamed:NSStringFromClass(self.class) owner:self options:nil];
    /* Add contentView as subview */
    [self addSubview:_contentView];
    /* Layout */
    [self layoutViewWithZeroMargins:_contentView];
    
    /* setup */
    [self setup];
}

- (void)setup {
    
}

#pragma mark - Layout

- (void)layoutViewWithZeroMargins:(UIView *)view {
    view.translatesAutoresizingMaskIntoConstraints = NO;
    NSDictionary *views = NSDictionaryOfVariableBindings(view);
    NSArray<NSString *> *formatStrings = @[@"|-0-[view]-0-|", @"V:|-0-[view]-0-|"];
    for (NSString *formatString in formatStrings) {
        NSArray<NSLayoutConstraint *> *constraints =
        [NSLayoutConstraint constraintsWithVisualFormat:formatString
                                                options:0
                                                metrics:nil
                                                  views:views];
        [NSLayoutConstraint activateConstraints:constraints];
    }
}

#pragma mark - Add to super view

- (void)addToSuperview:(UIView *)superview {
    [superview addSubview:self];
    [self layoutViewWithZeroMargins:self];
}

@end
