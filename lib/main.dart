import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/utils/Routes.dart';
import 'package:flutter_application_1/widgets/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
          // fontFamily: GoogleFonts.lato().fontFamily
          //textTheme : GoogleFonts.latoTextTheme()
      debugShowCheckedModeBanner: false,
      darkTheme:MyTheme.DarkTheme(),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.logInRoute: (context) => LoginPage()
      },
      //initialRoute: "/home",
    );
  }
}
