//
//  GDPViewController.m
//  GDPView
//
//  Created by yuyuan on 06/02/2019.
//  Copyright (c) 2019 yuyuan. All rights reserved.
//

#import "GDPViewController.h"
#import "GDPDemoView.h"

@interface GDPViewController ()

@property (weak, nonatomic) IBOutlet GDPDemoView *demoViewInXib;

@end

@implementation GDPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupDemoView];
}

- (void)setupDemoView {
    // setup demoview from xib
    _demoViewInXib.backgroundColor = UIColor.greenColor;
    _demoViewInXib.contentView.backgroundColor = [UIColor.purpleColor colorWithAlphaComponent:0.5];
    // init by code
    CGFloat screenWidth = UIScreen.mainScreen.bounds.size.width;
    CGFloat screenHeight = UIScreen.mainScreen.bounds.size.height;
    GDPDemoView *demoView = [[GDPDemoView alloc] initWithFrame:CGRectMake(50, screenHeight / 2, screenWidth - 60, screenHeight / 2 - 10)];
    demoView.detail = @"GDPDemoView, Init by code!";
    demoView.contentView.backgroundColor = UIColor.redColor;
    [self.view addSubview:demoView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
