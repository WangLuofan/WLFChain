//
//  WLFUIViewChainUpdater.h
//  WLFChain
//
//  Created by WangLuofan on 2021/3/10.
//

#import <WLFChain/WLFChainUpdater.h>
#import <UIKit/UIKit.h>

@interface WLFUIViewChainUpdater : WLFChainUpdater

-(instancetype)initWithView:(UIView*)view;

@property(nonatomic, copy, readonly) WLFUIViewChainUpdater*(^initWithFrame)(CGRect);
@property(nonatomic, copy, readonly) WLFUIViewChainUpdater*(^tintColor)(UIColor*);
@property(nonatomic, copy, readonly) WLFUIViewChainUpdater*(^backgroundColor)(UIColor*);

@property(nonatomic, strong, readonly) UIView* view;

@end
