import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_app/screen/history/history_screen.dart';

import 'package:learning_app/screen/login/login_screen.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Learning App',
          home: HistoryScreen(),
          debugShowCheckedModeBanner: false,
        );
  }
}
