import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:study2/delegate.dart';
import 'package:study2/homepage.dart';

final supportedLocales = [
  Locale('en', 'US'),
  Locale('kr', 'KR'),
  Locale('jp', 'JP'),
  Locale('cn', 'CN')
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // easylocalization 초기화!
  await EasyLocalization.ensureInitialized();

  // MyApp을 EasyLocalization 로 감싼다.
  runApp(
    EasyLocalization(
        // 지원 언어 리스트
        supportedLocales: supportedLocales,
        //path: 언어 파일 경로
        path: 'assets/locale',
        //fallbackLocale supportedLocales에 설정한 언어가 없는 경우 설정되는 언어
        fallbackLocale: Locale('en', 'US'),

        //startLocale을 지정하면 초기 언어가 설정한 언어로 변경됨
        //만일 이 설정을 하지 않으면 OS 언어를 따라 기본 언어가 설정됨
        //startLocale: Locale('ko', 'KR')

        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main_title'.tr(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      home: HomePage(),
      // supportedLocales: [const Locale('ko', 'KR'), const Locale('en', 'US')],
      // localizationsDelegates: [
      //   const TranslationsDelegate(),
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate
      // ],
      // localeResolutionCallback:
      //     (Locale locale, Iterable<Locale> supportedLocales) {
      //   if (locale == null) {
      //     debugPrint("*language locale is null!!!");
      //     return supportedLocales.first;
      //   }

      //   for (Locale supportedLocale in supportedLocales) {
      //     if (supportedLocale.languageCode == locale.languageCode ||
      //         supportedLocale.countryCode == locale.countryCode) {
      //       debugPrint("*language ok $supportedLocale");
      //       return supportedLocale;
      //     }
      //   }

      //   debugPrint("*language to fallback ${supportedLocales.first}");
      //   return supportedLocales.first;
      // },
    );
  }
}
