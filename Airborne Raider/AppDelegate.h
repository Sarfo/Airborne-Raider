//
//  AppDelegate.h
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/19/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

