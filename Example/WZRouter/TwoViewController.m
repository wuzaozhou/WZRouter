//
//  TwoViewController.m
//  WZRouter
//
//  Created by 吴灶洲 on 2018/11/27.
//  Copyright © 2018年 吴灶洲. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
}
+ (void)handleRequestWithParameters:(NSDictionary *)parameters topViewController:(UIViewController *)topViewController completed:(WZCompleted)completed {
    TwoViewController *vc = [[TwoViewController alloc] init];
//    vc.completed = completed;
//    [topViewController.navigationController pushViewController:vc animated:YES];
    [topViewController presentViewController:vc animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self dismissViewControllerAnimated:YES completion:nil];
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
