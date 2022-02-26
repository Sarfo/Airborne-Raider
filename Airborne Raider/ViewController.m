//
//  ViewController.m
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/19/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()


@end


@implementation ViewController

- (IBAction)closeViewController:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {

    [super viewDidLoad];
     
    //[m_tabBar setDelegate:self];
    
    // Do any additional setup after loading the view.
}


- (IBAction)coursesDateCall:(id)sender {
   
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:(910)376-9023"]  options:@{} completionHandler:nil];
    
}

- (IBAction)amc_umodpc:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:(910)432-5601"]  options:@{} completionHandler:nil];
}

- (IBAction)m_openMap:(id)sender {
    NSString *phoneNumber = @"https://www.google.com/maps/place/4601+Taylor+St+BLDG+1917,+Fort+Bragg,+NC+28310";
     NSDictionary *options = @{UIApplicationOpenURLOptionUniversalLinksOnly : @YES};
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber] options:options completionHandler:^(BOOL success) {}];
    
       
}
@end
