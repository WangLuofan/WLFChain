//
//  UIView+Addition.h
//  WLFChain
//
//  Created by WangLuofan on 2021/3/10.
//

#import <UIKit/UIKit.h>

@class WLFUIViewChainUpdater;
@interface UIView (Addition)

+(instancetype)newInstanceWithUpdater:(void(NS_NOESCAPE ^)(WLFUIViewChainUpdater* updater))block;
-(void)instanceWithUpdater:(void(NS_NOESCAPE ^)(WLFUIViewChainUpdater* updater))block;

@end
