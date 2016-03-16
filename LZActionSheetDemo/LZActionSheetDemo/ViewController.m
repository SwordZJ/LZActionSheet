//
//  ViewController.m
//  LZActionSheetDemo
//
//  Created by LeoZ on 16/3/16.
//  Copyright © 2016年 LeoZ. All rights reserved.
//

#import "ViewController.h"
#import "LZActionSheet.h"
@interface ViewController ()<LZActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)showActionSheet:(id)sender {
    LZActionSheet *sheet = [LZActionSheet showActionSheetWithDelegate:self cancelButtonTitle:@"取消" otherButtonTitles:@[@"测试1",@"测试2",@"测试3",@"测试4",]];
    
    [sheet show];
}

- (void)LZActionSheet:(LZActionSheet *)actionSheet didClickedButtonAtIndex:(NSInteger)index{
    switch (index) {
        case 0:
        case 1:
        case 2:
        case 3:
            [self pushToNextVc:index];
            break;
        default:
            break;
    }
}

- (void)pushToNextVc:(NSInteger)index{
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor randomColor];
    vc.title = [NSString stringWithFormat:@"控制器%zd",index];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
