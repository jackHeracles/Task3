#import "SceneDelegate.h"
#import "Task1ViewController.h"
#import "Task3TableViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.window = [[UIWindow alloc] initWithWindowScene: (UIWindowScene *)scene];
    
//    UITabBarController *tabBarController = [[UITabBarController alloc]init];
//
//    UIViewController *controller1 = [[UIViewController alloc] init];
//    controller1.view.backgroundColor = [UIColor yellowColor];
//    controller1.tabBarItem.title = @"图库";
//
//    UIViewController *controller2 = [[UIViewController alloc] init];
//    controller2.view.backgroundColor = [UIColor greenColor];
//    controller2.tabBarItem.title = @"壁纸";
//
//    UIViewController *controller3 = [[UIViewController alloc] init];
//    controller3.view.backgroundColor = [UIColor cyanColor];
//    controller3.tabBarItem.title = @"更多";
//
//    [tabBarController setViewControllers:@[controller1, controller2, controller3]];
//
//    UIView *btnView = [[UIView alloc] init];
//    btnView.backgroundColor = [UIColor whiteColor];
//    btnView.frame = CGRectMake(100, 100, 100, 100);
//      // 点击事件
//    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSettingTap)];
//    [btnView addGestureRecognizer:recognizer];
//    // 添加白色方块到更多里面
//    [controller3.view addSubview: btnView];
    
    Task3TableViewController *myViewController = [[Task3TableViewController alloc] init];
    // moreViewController.view.backgroundColor = [UIColor cyanColor];
    myViewController.tabBarItem.title = @"Task3";
    
    UINavigationController *rootViewController = [[UINavigationController alloc] initWithRootViewController:myViewController];
    
    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];

}

//- (void) onSettingTap {
//    Task1ViewController *controller = [[Task1ViewController alloc] init];
//    controller.view.backgroundColor = [UIColor whiteColor];
//    [((UINavigationController*)self.window.rootViewController) pushViewController:controller animated:YES];
//}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
