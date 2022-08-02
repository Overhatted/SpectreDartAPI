#ifndef FLUTTER_PLUGIN_DART_SPECTRE_API_PLUGIN_H_
#define FLUTTER_PLUGIN_DART_SPECTRE_API_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace dart_spectre_api {

class DartSpectreApiPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DartSpectreApiPlugin();

  virtual ~DartSpectreApiPlugin();

  // Disallow copy and assign.
  DartSpectreApiPlugin(const DartSpectreApiPlugin&) = delete;
  DartSpectreApiPlugin& operator=(const DartSpectreApiPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace dart_spectre_api

#endif  // FLUTTER_PLUGIN_DART_SPECTRE_API_PLUGIN_H_
