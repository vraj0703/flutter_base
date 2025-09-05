import 'package:flutter_base/styles/styles.dart';
import 'package:get_it/get_it.dart';

import 'flutter_base_platform_interface.dart';
import 'l10n/app_localizations.dart';
import 'logic/locale_logic.dart';

/// A Flutter plugin that initializes with AppLocalizations and AppStyle.
///
/// This class provides a centralized point for accessing localization strings
/// and application styles. It utilizes GetIt for dependency injection.
class FlutterBase {
  /// Initializes the FlutterBase plugin.
  ///
  /// This method should be called once during app startup, typically in `main.dart`.
  /// It registers [AppLocalizations] and [AppStyle] with GetIt for global access.
  static Future<void> initialize({
    required AppStyle style,
  }) async {
    GetIt.I.registerSingleton<AppStyle>(style);
  }

  Future<String?> getPlatformVersion() {
    return FlutterBasePlatform.instance.getPlatformVersion();
  }
}

LocaleLogic get localeLogic => GetIt.I.get<LocaleLogic>();

/// Global helpers for readability
AppLocalizations get $strings => GetIt.I.get<AppLocalizations>();

AppStyle get $styles => GetIt.I.get<AppStyle>();
