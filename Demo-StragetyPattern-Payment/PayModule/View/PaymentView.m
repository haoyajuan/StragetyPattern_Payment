//
//  PayView.m
//  Demo-StragetyPattern-Payment
//
//  Created by haoyajuan on 2018/2/6.
//  Copyright © 2018年 haoyajuan. All rights reserved.
//

#import "PaymentView.h"

#define IPHONE_HEIGHT [UIScreen mainScreen].bounds.size.height
#define IPHONE_WIDTH [UIScreen mainScreen].bounds.size.width
#define kPayCellHeight 50.0
#define kMarginSpace 10

@interface PaymentView ()<UITableViewDelegate,UITableViewDataSource>//,PayStyleSelectedDelegate>
{
    UITableView *payTableView;
    NSArray *payStyleArray;
}
@end

@implementation PaymentView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self initPayTabelView];
    }
    return self;
}
- (void)initPayTabelView{

    CGFloat viewHeight = kPayCellHeight * payStyleArray.count;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, IPHONE_WIDTH, viewHeight);
    payTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, IPHONE_WIDTH, viewHeight)];
    payTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    payTableView.scrollEnabled = NO;
    payTableView.delegate = self;
    payTableView.dataSource = self;
    [self addSubview:payTableView];
    
}
#pragma mark - UITabelViewDataSource
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kPayCellHeight;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return payStyleArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identifier = @"identifier";
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    PaymentDataModel *model = payStyleArray[indexPath.row];
    cell.textLabel.text = model.payStyleName;
    return cell;
}

#pragma mark - UITabelViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PaymentDataModel *selectedModel = payStyleArray[indexPath.row];

    if ([self.delegate respondsToSelector:@selector(didSelectedPaymentViewWithModel:)]) {
        [self.delegate didSelectedPaymentViewWithModel:selectedModel];
        [payTableView reloadData];
    }
}

#pragma mark -
+ (instancetype)payViewWithOrigin:(CGPoint)origin PayTypeArray:(NSArray*)paymentArray{
    return [[self alloc]initWithOrigin:origin PayTypeArray:paymentArray];
}
- (instancetype)initWithOrigin:(CGPoint)origin PayTypeArray:(NSArray*)paymentArray{
    payStyleArray = paymentArray;
    if (self = [self initWithFrame:CGRectMake(origin.x, origin.y, 0, 0)]) {
    }
    return self;
}
@end
