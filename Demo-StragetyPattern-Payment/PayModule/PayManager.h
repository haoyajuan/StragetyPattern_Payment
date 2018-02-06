//
//  PayManager.h
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

/**
 添加支付方式:
 1.在PaymentMethod类中添加一个PaymentMethod的子类,实现支付的方法
 2.在PayStyleDataModel.h类的setPayType:方法中添加支付方式的初始化数据
 
 */

#import <Foundation/Foundation.h>
#import "PaymentMethod.h"


@interface PayManager : NSObject

/**
 调起支付方式,传入不同的支付类对象,就会自动调起相应的支付方式

 @param paramsModel 调起支付时,所需要的参数
 @param payMethod 需要调起的支付方式的类对象
 @param CurruntVC 当前控制器,用于页面跳转
 */
+ (void)payForOrderWithParams:(PayParametersModel*)paramsModel payModel:(PaymentMethod*)payMethod;

@end
