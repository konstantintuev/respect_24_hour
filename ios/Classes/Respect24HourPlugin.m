#import "Respect24HourPlugin.h"
#import <is_24_hour_format/is_24_hour_format-Swift.h>

@implementation Respect24HourPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRespect24HourPlugin registerWithRegistrar:registrar];
}
@end
