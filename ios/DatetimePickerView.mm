#ifdef RCT_NEW_ARCH_ENABLED
#import "DatetimePickerView.h"

#import <react/renderer/components/RNDatetimePickerViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNDatetimePickerViewSpec/EventEmitters.h>
#import <react/renderer/components/RNDatetimePickerViewSpec/Props.h>
#import <react/renderer/components/RNDatetimePickerViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface DatetimePickerView () <RCTDatetimePickerViewViewProtocol>

@end

@implementation DatetimePickerView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<DatetimePickerViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const DatetimePickerViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<DatetimePickerViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<DatetimePickerViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> DatetimePickerViewCls(void)
{
    return DatetimePickerView.class;
}

@end
#endif
