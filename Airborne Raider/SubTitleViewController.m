//
//  SubTitleViewController.m
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/25/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import "SubTitleViewController.h"

  


@interface SubTitleViewController ()

@end

@implementation SubTitleViewController
@synthesize m_table;


- (void)viewDidLoad {
    [super viewDidLoad];
    if ([[self restorationIdentifier] isEqual: @"individuals"]){
        
        m_titleArray=@[@{@"MOLLE Assault Pack":@"https://youtu.be/x6eXxGaFjzw"},@{@"MOLLE 4000":@"https://youtu.be/7r662WEKKmU"},@{@"WAPES":@"https://youtu.be/BhG2-Upt6tg"},@{@"Camelbak Talon J":@"https://youtu.be/7v-H4Amnh2Q"},@{@"Medium MOLLE":@"https://youtu.be/bcQc2exN998?list=TLPQMjcxMDIwMjENHB-JUzEsSg"},@{@"MAWC w/m4":@"https://youtu.be/EgDlOe6IgYo?list=TLPQMjcxMDIwMjENHB-JUzEsSg"},@{@"M7A1 Large Base Plate":@"https://youtu.be/NX_Eqru9A5c"},@{@"M225A1 Cannon":@"https://youtu.be/AlZDE1HJ33g?list=TLPQMjcxMDIwMjENHB-JUzEsSg"},@{@"M170A1 Bipod Assembly":@"https://youtu.be/W_TWxR_3Y0I"},@{@"COM201":@"https://youtu.be/eOlV4GM_o5I"},@{@"M3MAAWS ammo":@"https://youtu.be/cVIu1eoMgl4"},@{@"SMAWD":@"https://youtu.be/kn2eVS4jQkY?list=TLPQMjcxMDIwMjENHB-JUzEsSg"},@{@"AT4":@"https://youtu.be/oiss6fUm7k0"}];
        
    }else if([[self restorationIdentifier] isEqual: @"inspection"]){
        
        
        m_titleArray=@[@{@"Camelbak Talon J":@"https://youtu.be/RU42dnY8ViI"},@{@"Large MOLLE":@"https://youtu.be/T6wZY9HZBh0"},@{@"M7A1 Large Base Plate":@"https://youtu.be/T6LfRAdfbPc"},@{@"M170A1 Bipod assembly":@"https://youtu.be/h9j_lpJH7G8"},@{@"M192 Lightweight Ground Mount":@"https://youtu.be/WppBUo0irxA"},@{@"COM201":@"https://youtu.be/aui9_MoyRPM"},@{@"M3 MAAWS":@"https://youtu.be/A6e9GLsnma4"},@{@"SMAW-D":@"https://youtu.be/mXQDRxLBKwc"},@{@"AT-4":@"https://youtu.be/1UChCjoG240"},@{@"Inspection Of The  USLM":@"https://youtu.be/WZKKHkKS0n8"},@{@"Helmet":@"https://youtu.be/WSr_u4RO-H0"}];
        
    }
    [m_table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"subTitle"];
    [m_table setDelegate:self];
    [m_table setDataSource:self];
    [m_table setBackgroundColor:[UIColor blackColor]];
  
 
    
    // Do any additional setup after loading the view.
}
-(void)setTitle:(UILabel *)titleName andUrl:(UIWebView *)webView{
    titleName.text=[m_titleArray[m_selectedRow] allKeys][0];
    [webView loadRequest: [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:[m_titleArray[m_selectedRow] allValues][0]]]];
  
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"subTitle"];
    

    cell.textLabel.text=[m_titleArray[indexPath.row] allKeys][0];
    [[cell contentView] setBackgroundColor:[UIColor blackColor]];
    [cell setBackgroundColor:[UIColor blueColor]];
    [cell.textLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [cell.textLabel setFont:[UIFont boldSystemFontOfSize:20]];
    [cell.textLabel setTextAlignment:NSTextAlignmentCenter];
    [[cell.textLabel.trailingAnchor constraintEqualToAnchor:cell.trailingAnchor constant:-15] setActive:YES];
    [[cell.textLabel.leadingAnchor constraintEqualToAnchor:cell.leadingAnchor constant:15] setActive:YES];
    [[cell.textLabel.topAnchor constraintEqualToAnchor:cell.topAnchor constant:5] setActive:YES];
    [[cell.textLabel.bottomAnchor constraintEqualToAnchor:cell.bottomAnchor constant:-5] setActive:YES];
    [cell.textLabel setTextColor:[UIColor whiteColor]];
    [cell.textLabel setBackgroundColor: [UIColor darkGrayColor]];
    [cell setBackgroundColor:[UIColor blackColor]];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return m_titleArray.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    m_selectedRow=(int)indexPath.row;
    YoutubeVCViewController *vc=(YoutubeVCViewController*)[[self storyboard] instantiateViewControllerWithIdentifier:@"YoutubeVC"];
    vc->m_setInfoDelegate=self;
    [self.navigationController pushViewController:vc animated:  YES];
}


/*
 - (void)encodeWithCoder:(nonnull NSCoder *)coder {
    <#code#>
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    <#code#>
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    <#code#>
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    <#code#>
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    <#code#>
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    <#code#>
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    <#code#>
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    <#code#>
}

- (void)setNeedsFocusUpdate {
    <#code#>
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    <#code#>
}

- (void)updateFocusIfNeeded {
    <#code#>
}
*/


- (IBAction)closeViewController:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
