
import 'package:flutter_base/styles/styles.dart';
import 'package:get_it/get_it.dart';

import 'flutter_base_platform_interface.dart';
import 'l10n/app_localizations.dart';
import 'logic/locale_logic.dart';

class FlutterBase {
  Future<String?> getPlatformVersion() {
    return FlutterBasePlatform.instance.getPlatformVersion();
  }
}

LocaleLogic get localeLogic => GetIt.I.get<LocaleLogic>();

/// Global helpers for readability
AppLocalizations get $strings => localeLogic.strings;
AppStyle get $styles => WondersAppScaffold.style;
