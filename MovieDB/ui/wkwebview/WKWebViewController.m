//
//  WKWebViewController.m
//  MovieDB
//
//  Created by tri on 1/30/20.
//  Copyright © 2020 Tri. All rights reserved.
//

#import "WKWebViewController.h"
#import <WebKit/WebKit.h>

@interface WKWebViewController ()

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupUIButtonLeft];
    
    self.wkWebView.UIDelegate = self;
    self.wkWebView.navigationDelegate = self;
    
    NSURL *nsurl=[NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [self.wkWebView loadRequest:nsrequest];
}

- (void)setupUIButtonLeft{
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc] initWithTitle:@"Back WebView"
                                                            style:UIBarButtonItemStylePlain
                                                            target:self
                                                            action:@selector(onBackWkWebView:)];
    self.navigationItem.leftBarButtonItem = btnLeft;
}

- (IBAction)onBackWkWebView:(id)sender {
    if (self.wkWebView.canGoBack) {
        [self.wkWebView goBack];
        return;
    }
    [self showAlert];
}

- (void)showAlert {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Alert"
                                                                    message:@"Can't back."
                                                                    preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
                                                            style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures {
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    return [[WKWebView alloc] initWithFrame:self.wkWebView.frame configuration:config];;
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    if (navigationAction.navigationType == UIWebViewNavigationTypeLinkClicked) {
        NSLog(@"WKWebView: %@", @"UIWebViewNavigationTypeLinkClicked");
    }
    NSString *url = [navigationAction.request.URL query];
    NSLog(@"WKWebView: %@", url);
    // should overide url
    
    decisionHandler(WKNavigationActionPolicyAllow);
    
    NSLog(@"WKWebView: %@", @"decidePolicyForNavigationAction");
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    NSLog(@"WKWebView: %@", @"didStartProvisionalNavigation");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
     NSLog(@"WKWebView: %@", @"didFinishNavigation");
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
     NSLog(@"WKWebView: %@", @"didFailNavigation");
}

@end
