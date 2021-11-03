//
//  EquipCViewController.h
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/27/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YoutubeVCViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface EquipCViewController : UIViewController<SetInfo>{
    
@public
    NSArray *m_data;
    int m_selectedIdx;
}
@property (weak, nonatomic) IBOutlet UIButton *m_a7a;
@property (weak, nonatomic) IBOutlet UIButton *m_a21;

@end

NS_ASSUME_NONNULL_END
