#include "include/dart_spectre_api/dart_spectre_api_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dart_spectre_api_plugin.h"

void DartSpectreApiPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dart_spectre_api::DartSpectreApiPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
