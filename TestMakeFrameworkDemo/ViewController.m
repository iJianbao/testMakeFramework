//
//  ViewController.m
//  TestMakeFrameworkDemo
//
//  Created by apple on 2019/8/12.
//  Copyright © 2019 apple. All rights reserved.
//

#import "ViewController.h"
#import <TestMakeFramework/TestMakeFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction:(UIButton *)btn {
    [TestManager managerTheInitPage:self.navigationController];
}

@end
