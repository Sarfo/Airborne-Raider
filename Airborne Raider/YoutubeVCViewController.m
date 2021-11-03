//
//  YoutubeVCViewController.m
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/26/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import "YoutubeVCViewController.h"

@interface YoutubeVCViewController ()

@end

@implementation YoutubeVCViewController
@synthesize m_subTitle;
@synthesize m_youtWebKit;
-(void)setSubTitle:(NSString *)title{
    m_subTitle.text=title;
}
- (void)viewDidLoad {
   
    
    [m_setInfoDelegate setTitle:m_subTitle andUrl:m_youtWebKit];
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
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
