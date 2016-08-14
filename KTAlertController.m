//
//  KTAlertController.m
//  KTAlertController
//
//  Created by Kevin on 16/8/14.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "KTAlertController.h"

@interface KTAlertController ()

@property (nonatomic, copy) NSString *titleText;
@property (nonatomic, copy) NSString *cancelText;
@property (nonatomic, copy) NSString *buttonText;
@property (nonatomic, copy) NSString *descriptionText;
@property (nonatomic, copy) void (^buttonAction)();
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *verticalLineView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cancelButtonLeftConstraint;

@end

@implementation KTAlertController

+ (instancetype)alertControllerWithTitle:(NSString *)title description:(NSString *)description cancel:(NSString *)cancel button:(NSString *)button action:(void (^)())buttonAction
{
    NSAssert(title.length > 0 || description.length > 0 , @"title和description不能同时为空");
    
    KTAlertController *alert = [[KTAlertController alloc] init];
    alert.titleText = title;
    alert.descriptionText = description;
    alert.cancelText = cancel ? cancel : @"取消";
    alert.buttonText = button;
    alert.buttonAction = buttonAction;
    
    return alert;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.titleLabel.text = self.titleText;
    self.descriptionLabel.text = self.descriptionText;
    [self.cancelButton setTitle:self.cancelText forState:UIControlStateNormal];
    [self.button setTitle:self.buttonText forState:UIControlStateNormal];
    if (self.buttonText.length == 0) {
        self.button.hidden = YES;
        self.verticalLineView.hidden = YES;
        self.cancelButtonLeftConstraint.constant = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapButton:(UIButton *)sender {
    if (sender == self.button && self.buttonAction) {
            self.buttonAction();
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
