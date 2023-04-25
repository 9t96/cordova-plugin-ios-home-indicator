#import <Cordova/CDV.h>
#import "HomeIndicator.h"
#import <Cordova/CDVViewController.h>
//Defaults to NO
BOOL prefersHidden = NO;

//Override method to return the value in prefersHidden
@implementation CDVViewController (HomeIndicator)

- (BOOL)prefersHomeIndicatorAutoHidden {
    return prefersHidden;
}
@end

@implementation HomeIndicator

- (void) setPrefersAutoHidden: (BOOL) newValue : (CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    CDVViewController* vc = (CDVViewController*)self.viewController;
    prefersHidden = YES;
    if (@available(iOS 11.0, *)) {
        [vc setNeedsUpdateOfHomeIndicatorAutoHidden];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Home indicator hidden"];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Home indicator not supported"];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
   
}

- (void)showHomeIndicator:(CDVInvokedUrlCommand*)command
{
    [self setPrefersAutoHidden:NO:command];
}
    
- (void)hideHomeIndicator:(CDVInvokedUrlCommand*)command
{
    [self setPrefersAutoHidden:YES:command];
}


@end
