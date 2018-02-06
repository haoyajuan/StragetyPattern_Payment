//
//  ViewController.m
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import "ViewController.h"
#import "PaymentView.h"
#import "PaymentDataModel.h"
#import "PayManager.h"

@interface ViewController () <PaymentViewSelectedDelegate>
@property (nonatomic,strong) NSArray *paymentArray;
@property (nonatomic,strong) PaymentDataModel *selectedPayModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    PaymentView *payStyleView = [PaymentView payViewWithOrigin:CGPointMake(0, 64) PayTypeArray:self.paymentArray];
    payStyleView.delegate = self;
    [self.view addSubview:payStyleView];
    
}

- (void)didSelectedPaymentViewWithModel:(PaymentDataModel *)payModel{
    self.selectedPayModel = payModel;
    
    PayParametersModel *params = [[PayParametersModel alloc]init];
    params.payType = payModel.payType;
    params.orderID = @"12122";
    params.orderPrice = @"123.00";

    [PayManager payForOrderWithParams:params payModel:payModel.payModel];
}

//模拟接口数据
- (NSArray *)paymentArray{
    if (!_paymentArray) {
        NSMutableArray *array = [NSMutableArray array];
        for (int i=1; i<=7; i++) {
            PaymentDataModel *model = [[PaymentDataModel alloc]init];
            model.paymentType = [NSString stringWithFormat:@"10%d",i];
            [array addObject:model];
        }
        _paymentArray = [array mutableCopy];
    }
    return _paymentArray;
}
@end
