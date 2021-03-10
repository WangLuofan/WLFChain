//
//  UIView+Addition.m
//  WLFChain
//
//  Created by WangLuofan on 2021/3/10.
//

#import "UIView+Addition.h"
#import "WLFUIViewChainUpdater.h"

@implementation UIView (Addition)

+(instancetype)newInstanceWithUpdater:(void (NS_NOESCAPE ^)(WLFUIViewChainUpdater *))block {
    WLFUIViewChainUpdater* updater = [[WLFUIViewChainUpdater alloc] init];
    block(updater);
    
    return updater.view;
}

-(void)instanceWithUpdater:(void (NS_NOESCAPE ^)(WLFUIViewChainUpdater *))block {
    WLFUIViewChainUpdater* updater = [[WLFUIViewChainUpdater alloc] initWithView:self];
    block(updater);
    
    return ;
}

@end
