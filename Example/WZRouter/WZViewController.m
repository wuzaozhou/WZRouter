//
//  WZViewController.m
//  WZRouter
//
//  Created by wuzaozhou on 07/25/2019.
//  Copyright (c) 2019 wuzaozhou. All rights reserved.
//

#import "WZViewController.h"
#import <WZRouter/HZRouterHeader.h>

@interface WZViewController ()

@end

@implementation WZViewController

- (IBAction)onClick:(id)sender {
    WZRouterRequest *request = [[WZRouterRequest alloc] initWithPath:@"OneViewController" parameters:nil];
    [[WZRouter sharedRouter] handleRequest:request completed:^(id  _Nullable result, NSError * _Nullable error) {
        
    }];
}
- (IBAction)present:(UIButton *)sender {
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:1];
    [dict setObject:@"1" forKey:@"id"];
    WZRouterRequest *request = [[WZRouterRequest alloc] initWithPath:@"TwoViewController" parameters:nil];
    [[WZRouter sharedRouter] handleRequest:request completed:^(id  _Nullable result, NSError * _Nullable error) {
        
    }];
}

@end
