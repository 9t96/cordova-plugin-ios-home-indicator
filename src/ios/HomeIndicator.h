#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>
#import <Cordova/CDVViewController.h>

@interface HomeIndicator : CDVPlugin

- (void)hideHomeIndicator:(CDVInvokedUrlCommand*)command;
- (void)showHomeIndicator:(CDVInvokedUrlCommand*)command;
- (void)setPrefersAutoHidden: (BOOL) newValue : (CDVInvokedUrlCommand*)command;
@end
