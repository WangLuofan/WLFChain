//
//  ViewController.m
//  WLFChainExample
//
//  Created by WangLuofan on 2021/3/10.
//

#import "ViewController.h"
#import <WLFChain/WLFChain.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView* view = [UIView newInstanceWithUpdater:^(WLFUIViewChainUpdater* updater) {
        updater.initWithFrame(CGRectMake(100.0f, 100.0f, 50.0f, 50.0f)).backgroundColor([UIColor redColor]);
    }];
    [self.view addSubview:view];
}


@end
