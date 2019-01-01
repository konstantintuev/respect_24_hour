package tuev.konstantin.respect24hour;

import android.content.Context;
import android.os.Build;
import android.text.format.DateFormat;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** Respect24HourPlugin */
public class Respect24HourPlugin implements MethodCallHandler {
  private Context context;

  private Respect24HourPlugin(Context context) {
    this.context = context.getApplicationContext();
  }

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "respect_24_hour");
    channel.setMethodCallHandler(new Respect24HourPlugin(registrar.context()));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("get24HourFormat")) {
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.CUPCAKE) {
        result.success(DateFormat.is24HourFormat(context));
      } else {
        result.notImplemented();
      }
    } else {
      result.notImplemented();
    }
  }
}
