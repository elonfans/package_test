#import "XmAppCorePlugin.h"
#import <xm_app_core_plugin/xm_app_core_plugin-Swift.h>

@implementation XmAppCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXmAppCorePlugin registerWithRegistrar:registrar];
}
@end
