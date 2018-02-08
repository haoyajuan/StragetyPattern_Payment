# StragetyPattern_Payment
使用策略模式实现多种支付方式的调用,避免调用支付方式时使用大块的判断语句
## 如何实现
* 创建支付方式的父类PaymentMethod,提供支付接口
```objc
@interface PaymentMethod : NSObject
- (void)payForOrderWithParams:(PayParametersModel *)paramsModel;
@end
```
* 创建继承自PaymentMethod的子类,实现继承自父类的支付方法,方法中实现每种支付方式的具体业务逻辑
```objc
@implementation AliPayMethod
- (void)payForOrderWithParams:(PayParametersModel*)paramsModel{
    NSLog(@"调用了支付宝支付");
    /*添加调用支付方式的业务逻辑*/
    }
@end
```

* 创建工具类PayManager,提供用于支付的类方法
   * 接口中使用父类类型PaymentMethod接受其子类的实例对象
   * 使用子类的实例对象调用PaymentMethod父类中的支付方法
   * 消息发送机制会调用子类中的支付方法
   ```objc
   /**
   调起支付方式,传入不同的支付类对象,就会自动调起相应的支付方式
   @param paramsModel 调起支付时,所需要的参数
   @param payMethod 需要调起的支付方式的类对象
   */
   + (void)payForOrderWithParams:(PayParametersModel*)paramsModel payModel:(PaymentMethod*)payMethod;
   
   + (void)payForOrderWithParams:(PayParametersModel*)paramsModel payModel:(PaymentMethod*)payMethod{
       [payMethod payForOrderWithParams:paramsModel];
   }
   ```
* 在支付方式的Model中(PaymentDataModel)初始化对应的支付方式(PaymentMethod)的子类实例对象
   * 可以创建一个支付方式参数的Model,用于传递支付方式
```objc
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
        default:
            break;
    }
}

```

* 调用使用PayManager工具类,参数为PaymentDataModel中的支付方式实例对象

```objc
/*支付方式的点击选中事件*/
- (void)didSelectedPaymentViewWithModel:(PaymentDataModel *)selectedPayModel{
    self.selectedPayModel = selectedPayModel;

    PayParametersModel *params = [[PayParametersModel alloc]init];
    params.payType = selectedPayModel.payType;
    params.orderID = @"12122";
    params.orderPrice = @"123.00";

    [PayManager payForOrderWithParams:params payModel:selectedPayModel.payModel];
}
```

### 大致的类关系图
![(类关系图)](https://wx1.sinaimg.cn/mw690/6db36f29ly1fo8ru4x6suj20s70i30us.jpg)
