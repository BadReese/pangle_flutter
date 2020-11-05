import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pangle_flutter/pangle_flutter.dart';

import 'common/common.dart';
import 'common/constant.dart';
import 'page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initPangle();
  runApp(PangleApp());
}

class PangleApp extends StatelessWidget {
  const PangleApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: kThemeData,
    );
  }
}

Future<Null> initPangle() async {
  await pangle.init(
    iOS: IOSConfig(
      appId: kAppId,
      logLevel: PangleLogLevel.debug,
    ),
    android: AndroidConfig(
      appId: kAppId,
      debug: true,
      allowShowNotify: true,
      allowShowPageWhenScreenLock: false,
    ),
  );

  /// 原生加载开屏
  // await pangle.loadSplashAd(
  //   iOS: IOSSplashConfig(
  //     slotId: kSplashId,
  //     isExpress: false,
  //   ),
  //   android: AndroidSplashConfig(
  //     slotId: kSplashId,
  //     isExpress: false,
  //   ),
  // );
}
