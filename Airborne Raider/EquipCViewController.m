//
//  EquipCViewController.m
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/27/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import "EquipCViewController.h"

@interface EquipCViewController ()

@end

@implementation EquipCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    m_data=@[@{@"A7A Cargo Sling":@"https://youtu.be/la3UrRmzX0A?list=TLPQMjcxMDIwMjENHB-JUzEsSg"},@{@"A21 Cargo Bag":@"https://youtu.be/XyEZ1sDqeSU?list=TLPQMjcxMDIwMjENHB-JUzEsSg"}];
    // Do any additional setup after loading the view.
}
- (IBAction)a7a:(id)sender {
    m_selectedIdx=0;
        YoutubeVCViewController *vc=(YoutubeVCViewController*)[[self storyboard] instantiateViewControllerWithIdentifier:@"YoutubeVC"];
        vc->m_setInfoDelegate=self;
        [self.navigationController pushViewController:vc animated:  YES];
}

- (IBAction)a21:(id)sender {
    m_selectedIdx=1;
    YoutubeVCViewController *vc=(YoutubeVCViewController*)[[self storyboard] instantiateViewControllerWithIdentifier:@"YoutubeVC"];
    vc->m_setInfoDelegate=self;
    [self.navigationController pushViewController:vc animated:  YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)setTitle:(UILabel *)titleName andUrl:(UIWebView *)webView{
    titleName.text=[m_data[m_selectedIdx] allKeys][0];
    [webView loadRequest: [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:[m_data[m_selectedIdx] allValues][0]]]];
  
}

@end
