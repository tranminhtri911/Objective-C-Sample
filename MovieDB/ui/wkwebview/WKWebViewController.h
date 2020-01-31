//
//  WKWebViewController.h
//  MovieDB
//
//  Created by tri on 1/30/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WKWebViewController : UIViewController<WKUIDelegate, WKNavigationDelegate>

@property (weak, nonatomic) IBOutlet WKWebView * wkWebView;


@end

NS_ASSUME_NONNULL_END
