// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef DatetimePickerViewNativeComponent_h
#define DatetimePickerViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface DatetimePickerView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* DatetimePickerViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
