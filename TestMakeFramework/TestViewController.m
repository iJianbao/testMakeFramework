//
//  TestViewController.m
//  TestMakeFramework
//
//  Created by apple on 2019/8/12.
//  Copyright © 2019 apple. All rights reserved.
//

#import "TestViewController.h"
#import "Masonry.h"

@interface TestViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSBundle *mainBundler = [NSBundle bundleForClass:[self class]];
    NSString *path = [mainBundler pathForResource:@"TestMakeBundle" ofType:@"bundle"];
    NSBundle *testBundle = [NSBundle bundleWithPath:path];
    UIImage *image = [UIImage imageNamed:@"用户头像" inBundle:testBundle compatibleWithTraitCollection:nil];
    NSLog(@"图片 = %@, bundle = %@", image, testBundle);
    _headerImageView.image = image;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(100);
        make.bottom.equalTo(self.view);
        make.width.height.mas_equalTo(120);
    }];
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"测试masonry" forState:UIControlStateNormal];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
