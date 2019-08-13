//
//  TestManager.m
//  TestMakeFramework
//
//  Created by apple on 2019/8/12.
//  Copyright © 2019 apple. All rights reserved.
//

#import "TestManager.h"
#import "TestViewController.h"

@implementation TestManager

+(void)managerTheInitPage:(UINavigationController *)basePage {
    // 因为在frame里面其bundle实frame不是工程文件所以这边bundle要按一下写
    NSBundle *mainBundler = [NSBundle bundleForClass:[self class]];
    NSLog(@"加载路径=%@", mainBundler.bundlePath);
    UIStoryboard *stroyboard = [UIStoryboard storyboardWithName:@"Test" bundle:mainBundler];
    TestViewController *vc = [stroyboard instantiateViewControllerWithIdentifier:@"TestID"];
    [basePage pushViewController:vc animated:YES];
}

@end
