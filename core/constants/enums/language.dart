import 'package:flutter/material.dart';

/// Enum to represent supported locales in the app.
enum Locales {
  tr(Locale('tr', 'TR')),
  en(Locale('en', 'US'));

  /// The `Locale` associated with each enum value.
  final Locale locale;
  const Locales(this.locale);

  /// A list of supported locales in the app.
  static const List<Locale> supportedLocales = [
    Locale('tr', 'TR'),
    Locale('en', 'US'),
  ];
}

