//
//  PayManager.m
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import "PayManager.h"

@implementation PayManager


+ (void)payForOrderWithParams:(PayParametersModel*)paramsModel payModel:(PaymentMethod*)payMethod{
    [payMethod payForOrderWithParams:paramsModel];
}

@end
