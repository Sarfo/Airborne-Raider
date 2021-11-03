//
//  PDFViewController.m
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/27/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import "PDFsViewController.h"

@interface PDFsViewController ()

@end

@implementation PDFsViewController

- (void)viewDidLoad {
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

- (IBAction)jmStudentStudyGuide:(id)sender {
   
    [self viewPDf:@"https://mobdiv.blob.core.usgovcloudapi.net/airborne/6.2_190225_student_study_guide_update%20.pdf"];
}

- (IBAction)preJumpTraining:(id)sender {
    [self viewPDf:@"https://mobdiv.blob.core.usgovcloudapi.net/airborne/6.3_pre-jump_training_update.pdf"];
}
- (IBAction)movementAir:(id)sender {
    [self viewPDf:@"https://mobdiv.blob.core.usgovcloudapi.net/airborne/8.1.1%20air_documentation.PDF"];
    
}

- (IBAction)movementSea:(id)sender {
    [self viewPDf:@"https://mobdiv.blob.core.usgovcloudapi.net/airborne/8.3.1%20sea%20documents.PDF"];
}
- (IBAction)movementAMCO:(id)sender {
    [self viewPDf:@"https://mobdiv.blob.core.usgovcloudapi.net/airborne/8.6.7_TEAMS_Application_Process_New_User.pdf"];
}
- (IBAction)cassop:(id)sender {
 
    
   
}
- (IBAction)jumpLogManagemnt:(id)sender {
     
    YoutubeVCViewController *vc=(YoutubeVCViewController*)[[self storyboard] instantiateViewControllerWithIdentifier:@"YoutubeVC"];
    vc->m_setInfoDelegate=self;
    [self.navigationController pushViewController:vc animated:  YES];

    
}

-(void)setTitle:(UILabel *)titleName andUrl:(UIWebView *)webView{
    titleName.text=@"Jump Log Management";
    [webView loadRequest: [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:@"https://youtu.be/Cmp7uTWeA0E"]]];
}
-(void)viewPDf:(NSString*)url{
    UIViewController* vc=[[UIViewController alloc]init];
    
    UIWebView *web=[[UIWebView alloc]init];
    [vc.view addSubview:web];
    [web setTranslatesAutoresizingMaskIntoConstraints:NO];
     [[web.trailingAnchor constraintEqualToAnchor:vc.view.trailingAnchor constant:0] setActive:YES];
     [[web.leadingAnchor constraintEqualToAnchor:vc.view.leadingAnchor constant:0] setActive:YES];
    [[web.topAnchor constraintEqualToAnchor:vc.view.topAnchor constant:0] setActive:YES];
   [[web.bottomAnchor constraintEqualToAnchor:vc.view.bottomAnchor constant:0] setActive:YES];

    [web loadRequest: [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:url]]];
  
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)closeViewController:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
