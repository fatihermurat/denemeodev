import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:denemeodev/sayfa/anasayfa.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);


  runApp(Anasayfa());
}

class Anasayfa extends StatelessWidget {
  static final String title = 'Bisınav';  //uygulama title kısmı

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.yellow),
    home: HomePage(),

  );
}
