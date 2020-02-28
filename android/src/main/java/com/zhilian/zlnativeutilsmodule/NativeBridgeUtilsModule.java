package com.zhilian.zlnativeutilsmodule;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

import androidx.annotation.Nullable;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;

public class NativeBridgeUtilsModule extends ReactContextBaseJavaModule {


    private Context mContext;
    public NativeBridgeUtilsModule(ReactApplicationContext reactContext){
        super(reactContext);
        mContext = reactContext;
    }

    @Override
    public String getName() {
        return "NativeBridgeUtilsModule";
    }

    /**
     * app相关
     * */
    @ReactMethod
    public void getAppVersion(final Promise promise) {
        WritableMap map = Arguments.createMap();
        String verName = "";
        try {
            verName = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        map.putString("version",verName);
        promise.resolve(map);
    }

    /**
     * 发送事件给js的统一方法
     *
     * @param eventName
     * @param params
     */
    public void sendEvent(String eventName, @Nullable WritableMap params) {

        while (getReactApplicationContext() == null) {
            // Busy wait.
        }
        final ReactContext reactContext = getReactApplicationContext();
        reactContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class).emit(eventName, params);
    }
}
