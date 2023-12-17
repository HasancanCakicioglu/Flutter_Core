import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution_challenge_2023_recommender_app/core/logger/app_logger.dart';

@immutable
/// This class is used to initialize the application process
final class ApplicationInitialize {
  /// project basic required initialize
  Future<void> make() async {

   

    await runZonedGuarded<Future<void>>(
      _initialize,
      (error, stack) {
        AppLogger().e(error);
      },
    );
  }

  /// This method is used to initialize the application process
  Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
   
    

    FlutterError.onError = (details) {
      /// crashlytics log insert here
      /// custom service or custom logger insert here
      /// Todo: add custom logger
      AppLogger().e(details.exceptionAsString());
    };

  }


}