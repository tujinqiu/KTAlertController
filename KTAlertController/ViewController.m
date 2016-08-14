//
//  ViewController.m
//  KTAlertController
//
//  Created by Kevin on 16/8/14.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "KTAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    KTAlertController *alert = [KTAlertController alertControllerWithTitle:@"这是一个alert" description:@"又如何？" cancel:@"取消" button:@"好的" action:^{
        NSLog(@"tap button");
    }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self presentViewController:alert animated:YES completion:nil];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
