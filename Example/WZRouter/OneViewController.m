//
//  OneViewController.m
//  WZRouter
//
//  Created by 吴灶洲 on 2018/11/25.
//  Copyright © 2018年 吴灶洲. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()
@property (nonatomic, copy) WZCompleted completed;
@end

@implementation OneViewController

//+ (NSString *)routePath {
//    return @"WZ/OneViewController";
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSStringFromClass([self class]);
    self.view.backgroundColor = [UIColor redColor];
}

+ (void)handleRequestWithParameters:(NSDictionary *)parameters topViewController:(UIViewController *)topViewController completed:(WZCompleted)completed {
    OneViewController *vc = [[OneViewController alloc] init];
    vc.completed = completed;
    [topViewController.navigationController pushViewController:vc animated:YES];
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
