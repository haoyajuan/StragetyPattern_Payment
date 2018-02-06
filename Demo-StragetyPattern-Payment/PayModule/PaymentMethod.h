//
//  PayStyleModel.h
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PayParametersModel.h"

@interface PaymentMethod : NSObject

- (void)payForOrderWithParams:(PayParametersModel *)paramsModel;
@end


/** 微信支付*/
@interface WeChatPayMethod : PaymentMethod
@end
/** 支付宝支付*/
@interface AliPayMethod : PaymentMethod
@end
/** ApplePay*/
@interface ApplePayMethod : PaymentMethod
//+ (instancetype)shareInstance;
@end

/**招商银行：China Merchants Bank（CMB）*/
@interface MerchantsBankPay : PaymentMethod
@end

/**浦发银行：Shanghai Pudong Development Bank（SPDB）*/
@interface PufaPayBankPay : PaymentMethod
@end

//兴业银行：Industrial Bank（CIB）
@interface IndustrialBankPay : PaymentMethod
@end

/**中国民生银行：China Minsheng Banking（CMBC）*/
@interface MinshengBankPay : PaymentMethod
@end


/*
 中国工商银行：Industrial and Commercial Bank of China（ICBC）
 中国建设银行：China Construction Bank（CCB）
 中国农业银行：Agricultural Bank of China（ABC）
 中国银行：Bank of China（BOC）
 中信银行：China Citic Bank（ECITIC）
 广发银行：China Guangfa Bank（CGB）
 华夏银行：Huaxia Bank（HXB）

 */
