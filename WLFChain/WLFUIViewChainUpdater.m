//
//  WLFUIViewChainUpdater.m
//  WLFChain
//
//  Created by WangLuofan on 2021/3/10.
//

#import "WLFUIViewChainUpdater.h"

@interface WLFUIViewChainUpdater ()

@property(nonatomic, strong) UIView* viewIns;

@end

@implementation WLFUIViewChainUpdater

- (instancetype)initWithView:(UIView *)view {
    self = [super init];
    
    if(self) {
        self.viewIns = view;
    }
    
    return self;
}

-(UIView *)view {
    return self.viewIns;
}

-(WLFUIViewChainUpdater *(^)(UIColor *))tintColor {
    id block = ^(UIColor* color) {
        NSAssert(self.viewIns != nil, @"View MUST NOT NIL");
        self.viewIns.tintColor = color;
    };
    return block;
}

-(WLFUIViewChainUpdater *(^)(CGRect))initWithFrame {
    id block = ^(CGRect rect) {
        if(self.viewIns != nil) {
            return self;
        }
        
        UIView* view = [[UIView alloc] initWithFrame:rect];
        self.viewIns = view;
        
        return self;
    };
    return block;
}

-(WLFUIViewChainUpdater *(^)(UIColor*))backgroundColor {
    id block = ^(UIColor* color) {
        NSAssert(self.viewIns != nil, @"View MUST NOT NIL");
        
        self.viewIns.backgroundColor = color;
        return self;
    };
    return block;
}

@end
