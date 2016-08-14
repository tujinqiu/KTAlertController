//
//  KTAlertController.h
//  KTAlertController
//
//  Created by Kevin on 16/8/14.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTAlertController : UIViewController

+ (instancetype)alertControllerWithTitle:(NSString *)title description:(NSString *)description cancel:(NSString *)cancel button:(NSString *)button action:(void (^)())buttonAction;

@end
