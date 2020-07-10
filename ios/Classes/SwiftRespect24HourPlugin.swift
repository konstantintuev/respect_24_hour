import Flutter
import UIKit

public class SwiftRespect24HourPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "respect_24_hour", binaryMessenger: registrar.messenger())
    let instance = SwiftRespect24HourPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "get24HourFormat":
        let locale = NSLocale.current
        let formatter : String = DateFormatter.dateFormat(fromTemplate: "jj", options:0, locale:locale)!
        result(!formatter.contains("a"))
    default:
        print("Not implemented \(call.method)")
    }
    result("iOS " + UIDevice.current.systemVersion)
  }
}
