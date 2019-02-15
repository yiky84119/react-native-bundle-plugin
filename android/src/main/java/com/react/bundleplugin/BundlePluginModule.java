package com.react.bundleplugin;

import android.util.Log;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;

import java.util.ArrayList;

public class BundlePluginModule extends ReactContextBaseJavaModule {
    private static final String TAG = "RNMultipleShareModule";

    public MultipleShareModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "RNBundlePlugin";
    }

    @ReactMethod
    public void load(String name, Promise promise) {
        String a = "hhah";
        Log.i(TAG, a);

        //ArrayList arrayList = shareArray.toArrayList();

        promise.resolve("test");


        //promise.reject("1024", "error");
    }
}
