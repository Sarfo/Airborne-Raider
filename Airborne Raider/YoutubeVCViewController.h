//
//  YoutubeVCViewController.h
//  Airborne Raider
//
//  Created by SARFO KANTANKA FRIMPONG on 10/26/21.
//  Copyright © 2021 SARFO KANTANKA FRIMPONG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol SetInfo <NSObject>

-(void)setTitle:(UILabel*) titleName andUrl:(WKWebView*) webView;
 
@end

@interface YoutubeVCViewController : UIViewController{
@public
    id<SetInfo> m_setInfoDelegate;
}
@property (weak, nonatomic) IBOutlet UILabel *m_subTitle;
@property (weak, nonatomic) IBOutlet WKWebView *m_youtWebKit;
-(void)setSubTitle:( NSString * )title;

@end

NS_ASSUME_NONNULL_END
