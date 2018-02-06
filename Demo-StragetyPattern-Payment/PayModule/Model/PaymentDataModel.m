//
//  PaymentDataModel.m
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import "PaymentDataModel.h"

@implementation PaymentDataModel

- (void)setPaymentType:(NSString *)paymentType{
    _paymentType = paymentType;
    _payType = paymentType.integerValue;
    switch (_payType) {
        case PAY_APPLE:
            _payStyleName = @"Apple Pay";
            _payModel = [[ApplePayMethod alloc]init];
            break;
        case PAY_ALI:
            _payStyleName = @"支付宝支付";
            _payModel = [[AliPayMethod alloc]init];
            break;
        case PAY_WEIXIN:
            _payStyleName = @"微信支付";
            _payModel = [[WeChatPayMethod alloc]init];
            
            break;
        case PAY_PUFA:
            _payStyleName = @"浦发银行";
            _payModel = [[PufaPayBankPay alloc]init];
            break;
        case PAY_ZHAOSH:
            _payStyleName = @"招商银行";
            _payModel = [[MerchantsBankPay alloc]init];
            break;
        case PAY_XYBankPay:
            _payStyleName = @"兴业银行";
            _payModel = [[IndustrialBankPay alloc]init];
            break;
        case PAY_MinSheng:
            _payStyleName = @"民生银行";
            _payModel = [[MinshengBankPay alloc]init];
            break;
        default:
            break;
    }
}

@end
