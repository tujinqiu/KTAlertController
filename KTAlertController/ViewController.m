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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapButton:(UIButton *)sender {
    KTAlertController *alert = [KTAlertController alertControllerWithTitle:@"这是一个alert" description:@"又如何？" cancel:@"取消" button:@"好的" action:^{
        NSLog(@"tap button");
    }];
    alert.animationType = sender.tag == 1 ? KTAlertControllerAnimationTypeUpDown : KTAlertControllerAnimationTypeCenterShow;
    [self presentViewController:alert animated:YES completion:nil];
    if (sender.tag == 1) {
        sender.tag = 2;
    }
    else {
        sender.tag = 1;
    }
}

@end
