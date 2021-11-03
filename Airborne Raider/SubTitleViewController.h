//
//  SubTitleViewController.h
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/25/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YoutubeVCViewController.h"
NS_ASSUME_NONNULL_BEGIN



@interface SubTitleViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,SetInfo>{
    int m_selectedRow;
     NSArray*m_titleArray;
}

@property (weak, nonatomic) IBOutlet UITableView *m_table;

@end

NS_ASSUME_NONNULL_END
