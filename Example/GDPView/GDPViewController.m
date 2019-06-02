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
    GDPDemoView *demoView = [[GDPDemoView alloc] initWithFrame:CGRectMake(50, 128 + 50 + 20, 150, 150)];
    demoView.detail = @"GDPDemoView, Init by code!";
    [self.view addSubview:demoView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
