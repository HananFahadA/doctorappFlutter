import 'package:ap/Screen/HomeScreen.dart';
import 'package:ap/Screen/Nuers.dart';
import 'package:ap/Screen/Profile.dart';
import 'package:ap/Screen/orderNurse.dart';
import 'package:ap/Screen/reguestPack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),

      debugShowCheckedModeBanner: false,
      initialRoute: '/OrderNurse',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomeScreen(),
        '/Profile': (context) => Profile(),
        '/Nuers': (context) => Nuers(),
        '/ReguestPack': (context) => ReguestPack(),
        '/OrderNurse': (context) => OrderNurse(),
      },
      // home: SafeArea(
      //   child: Scaffold(

      //   // body: HomeScreen(),

      //   ),
      // ),
    );
  }
}
