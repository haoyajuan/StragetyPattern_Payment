//
//  PayView.h
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaymentDataModel.h"
@protocol PaymentViewSelectedDelegate  <NSObject>
@optional
- (void)didSelectedPaymentViewWithModel:(PaymentDataModel *)payModel;
@end

@interface PaymentView : UIView
@property (nonatomic,weak) id<PaymentViewSelectedDelegate> delegate;

+ (instancetype)payViewWithOrigin:(CGPoint)origin PayTypeArray:(NSArray*)payTypeArray;
@end
