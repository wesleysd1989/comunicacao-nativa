
package com.m3n0r.reactnative;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;

public class RNComunicacaoNativaModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNComunicacaoNativaModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNComunicacaoNativa";
  }
  @ReactMethod
  public void checkBridge(Promise promise) {
    promise.resolve("modulo funciona");
  }
}