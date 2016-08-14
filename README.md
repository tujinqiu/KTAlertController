# KTAlertController
使用自定义转场写的弹出框

block回调
自动布局大小

用法：

1、#import "KTAlertController.h"

2、这样用：
```
    KTAlertController *alert = [KTAlertController alertControllerWithTitle:@"这是一个alert" description:@"又如何？" cancel:@"取消" button:@"好的" action:^{
        NSLog(@"tap button");
    }];
    alert.animationType = KTAlertControllerAnimationTypeCenterShow;
    [self presentViewController:alert animated:YES completion:nil];
```

3、[参见我的blog](http://www.jianshu.com/p/96b275262d20)
