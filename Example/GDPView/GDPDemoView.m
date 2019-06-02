//
//  GDPDemoView.m
//  GDPView_Example
//
//  Created by Guan on 2019/6/2.
//  Copyright © 2019 yuyuan. All rights reserved.
//

#import "GDPDemoView.h"

@interface GDPDemoView ()

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation GDPDemoView

- (void)setDetail:(NSString *)detail {
    _detail = detail;
    _detailLabel.text = _detail;
}

@end
