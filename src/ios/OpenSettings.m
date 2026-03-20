#import <Cordova/CDV.h>

@interface OpenSettings : CDVPlugin
- (void)open:(CDVInvokedUrlCommand*)command;
@end

@implementation OpenSettings
- (void)open:(CDVInvokedUrlCommand*)command {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
            [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
        }];
    });
}
@end
