//
//  main.m
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/19/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
