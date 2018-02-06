//
//  PaymentMethod.m
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import "PaymentMethod.h"

@implementation PaymentMethod

- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"使用了未定义的支付方式");
}

@end

@implementation AliPayMethod
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了支付宝支付");
    /*添加调用支付方式的业务逻辑*/
}
@end

@implementation WeChatPayMethod
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了微信支付");
    /*添加调用支付方式的业务逻辑*/
}

@end
@implementation ApplePayMethod
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了ApplePay支付");
    /*添加调用支付方式的业务逻辑*/
}
@end

@implementation MerchantsBankPay
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了招商银行支付");
    /*添加调用支付方式的业务逻辑*/
}
@end

@implementation PufaPayBankPay
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了浦发银行支付");
    /*添加调用支付方式的业务逻辑*/
}
@end

@implementation IndustrialBankPay
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了兴业银行支付");
    /*添加调用支付方式的业务逻辑*/
}
@end

@implementation MinshengBankPay
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了民生银行支付");

//    MinShengViewController *bankVC = [[MinShengViewController alloc]init];
//    bankVC.paramsModel = paramsModel;
//    [CurruntVC.navigationController pushViewController:bankVC animated:YES];
}
@end
