package com.datetimepicker

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = DatetimePickerViewManager.NAME)
class DatetimePickerViewManager :
  DatetimePickerViewManagerSpec<DatetimePickerView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): DatetimePickerView {
    return DatetimePickerView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: DatetimePickerView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "DatetimePickerView"
  }
}
