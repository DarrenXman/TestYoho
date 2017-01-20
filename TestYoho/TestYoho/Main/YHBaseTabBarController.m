//
//  YHBaseTabBarController.m
//  TestYoho
//
//  Created by YiDarren on 17/1/19.
//  Copyright © 2017年 YiDarren. All rights reserved.
//

#import "YHBaseTabBarController.h"
#import "MBProgressHUD+JDragon.h"
#import "MBProgressHUD.h"


@interface YHBaseTabBarController ()<UITabBarControllerDelegate>

@end

@implementation YHBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //注意设置自己为委托人
    self.delegate = self;

}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController NS_AVAILABLE_IOS(3_0) {
    
    UINavigationController *nav = (UINavigationController *)viewController;
    
    if([[[nav viewControllers] firstObject] isKindOfClass:NSClassFromString(@"MineViewController")]) {
        
        [MBProgressHUD showWarnMessage:@"先登录方可进入我的UI"];
        
    }
    
    
    return YES;
    
}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    
    
}
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed {
    
    
}

- (UIInterfaceOrientation)tabBarControllerPreferredInterfaceOrientationForPresentation:(UITabBarController *)tabBarController NS_AVAILABLE_IOS(7_0) {
    
    return UIInterfaceOrientationPortrait;
}

- (nullable id <UIViewControllerInteractiveTransitioning>)tabBarController:(UITabBarController *)tabBarController
                               interactionControllerForAnimationController: (id <UIViewControllerAnimatedTransitioning>)animationController NS_AVAILABLE_IOS(7_0) {
    
    return nil;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)tabBarController:(UITabBarController *)tabBarController
                     animationControllerForTransitionFromViewController:(UIViewController *)fromVC
                                                       toViewController:(UIViewController *)toVC  NS_AVAILABLE_IOS(7_0) {
    
    
    return nil;
}

-(UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
