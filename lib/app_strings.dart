import 'dart:async';

import 'package:intl/intl.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_flutter/l10n/messages_all.dart';

class AppStrings {
  AppStrings(Locale locale) : _localeName = locale.toString();

  final String _localeName;

  static Future<AppStrings> load(Locale locale) {
    return initializeMessages(locale.toString())
        .then((Object _) {
      return new AppStrings(locale);
    });
  }

  static AppStrings of(BuildContext context) {
    return Localizations.of<AppStrings>(context, AppStrings);
  }

  String title() {
    return Intl.message(
      'Localization Demo',
      name: 'title',
      desc: '標題',
      locale: _localeName,
    );
  }

}