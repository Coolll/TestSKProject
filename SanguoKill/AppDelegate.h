//
//  AppDelegate.h
//  SanguoKill
//
//  Created by 龙培 on 2019/4/29.
//  Copyright © 2019年 龙培. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

