package id.proschool.app

import android.app.PendingIntent
import android.content.Context
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import android.os.Build
import android.os.Bundle
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import androidx.annotation.NonNull
import android.net.Uri
import android.content.Intent
import com.google.androidbrowserhelper.trusted.LauncherActivity


// TODO Step 7
// TODO Step 7
class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            // Note: this method is invoked on the main thread.
                call, result ->
            when (call.method) {
                "openTWA" -> {
                    val url : String? = call.argument<String>("url")
                    launchTWA(url)
                }
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            PendingIntent.getActivity(
               context,
                0 /* Request code */,
                intent,
                PendingIntent.FLAG_IMMUTABLE
            )
          
        }
    }

    companion object {
        private const val CHANNEL = "method_channel/twa"
    }

    private fun launchTWA(url: String?) {
        // TODO STEP 8
        // Create an intent and add the url to open as data in it
        // Open TWA Launcher Activity
        val intent = Intent(this, LauncherActivity::class.java)
        intent.data = Uri.parse(url)
        startActivity(intent)
    }
}