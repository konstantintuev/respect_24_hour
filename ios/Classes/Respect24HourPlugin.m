#import "Respect24HourPlugin.h"
#import <respect_24_hour/respect_24_hour-Swift.h>

@implementation Respect24HourPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRespect24HourPlugin registerWithRegistrar:registrar];
}
@end
