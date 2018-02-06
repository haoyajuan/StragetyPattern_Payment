//
//  PayParametersModel.h
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

/**
 调起支付时,所需要的参数
 */
#import <Foundation/Foundation.h>

@class YLOrderConfirm;

@interface PayParametersModel : NSObject
@property (nonatomic, strong)NSString *orderID;
@property (nonatomic, strong)NSString *orderPrice;
@property (nonatomic, assign)NSInteger payType;
@end
