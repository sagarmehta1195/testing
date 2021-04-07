#import "FluttersttingsPlugin.h"
#if __has_include(<fluttersttings/fluttersttings-Swift.h>)
#import <fluttersttings/fluttersttings-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttersttings-Swift.h"
#endif

@implementation FluttersttingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttersttingsPlugin registerWithRegistrar:registrar];
}
@end
