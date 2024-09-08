package com.datetimepicker

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.DatetimePickerViewManagerDelegate
import com.facebook.react.viewmanagers.DatetimePickerViewManagerInterface

abstract class DatetimePickerViewManagerSpec<T : View> : SimpleViewManager<T>(), DatetimePickerViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = DatetimePickerViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
