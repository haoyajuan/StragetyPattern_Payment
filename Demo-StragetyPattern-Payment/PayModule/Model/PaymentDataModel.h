//
//  PaymentDataModel.h
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentMethod.h"
//支付方式
typedef NS_ENUM(NSInteger,YJPayType) {
    PAY_ALI =       101,    //支付宝
    PAY_WEIXIN =    102,    //微信支付
    PAY_APPLE =     103,    //苹果支付
    PAY_PUFA =      104,    //浦发
    PAY_ZHAOSH =    105,    //招行
    PAY_XYBankPay = 106,    //兴业
    PAY_MinSheng =  107     //银行
};


@interface PaymentDataModel : NSObject
//@property (nonatomic,copy) NSString *payName;
@property (nonatomic,copy) NSString *payStyleName;//支付方式名称
@property (nonatomic,copy) NSString *paymentType;
@property (nonatomic,assign)YJPayType payType;
@property (nonatomic,strong) PaymentMethod *payModel;

@end
