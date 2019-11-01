import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learn_flutter/home.dart';
import 'localizations_delegate.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context).title,
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale.fromSubtags(languageCode: 'zh'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
        const Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
        const Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
        const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null)               return supportedLocales.first;
        if (locale.countryCode == 'CN')   return const Locale('zh', 'CN');
        if (locale.languageCode == 'zh')  return const Locale('zh', 'TW');

        return const Locale('en');
      },
      home: Home(),
    );
  }
}
