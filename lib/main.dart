import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restcountries_app/pages/countries_list_page.dart';
import 'package:restcountries_app/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    currentTheme.addListener(() {
      print("changes");
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(),
        textTheme: TextTheme(
          subtitle1: GoogleFonts.lobsterTwo(
            fontStyle: FontStyle.normal,
              fontSize: 30,
              color: Color.fromRGBO(5, 10, 48, 1),
              fontWeight: FontWeight.w800,
            letterSpacing: 3,
          ),
          subtitle2: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w300,

          ),
          headline1: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400
          ),
            headline2: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600
            ),
            headline3: GoogleFonts.lato(
                fontSize: 15,
                color: Colors.grey.withOpacity(0.5)
            )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style:ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    width: 2,
                    color: Colors.white
                )
            )
        ),
        appBarTheme:  const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(5, 10, 48, 1),
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: TextTheme(
            subtitle1: GoogleFonts.lobsterTwo(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800,
              letterSpacing: 3,
            ),
            subtitle2: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
            headline1: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
            headline2: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600
            ),
          headline3: GoogleFonts.lato(
            fontSize: 15,
            color: Colors.white.withOpacity(0.5)
          )
        ),
       elevatedButtonTheme: ElevatedButtonThemeData(
         style:ElevatedButton.styleFrom(
             backgroundColor: Color.fromRGBO(5, 10, 48, 1),
             side: BorderSide(
                 width: 2,
                 color: Colors.white
             )
         )
       ),
      ),
      themeMode:currentTheme.currentTheme(),
      home: const CountriesListPage(),
    );
  }
}
