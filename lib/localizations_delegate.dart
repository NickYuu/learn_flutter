import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:learn_flutter/app_strings.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppStrings> {
  @override
  Future<AppStrings> load(Locale locale) {
    return AppStrings.load(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      ['zh', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}