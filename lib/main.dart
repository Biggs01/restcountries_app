import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restcountries_app/pages/countries_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(),
        textTheme: TextTheme(
          subtitle1: GoogleFonts.pacifico(
            fontStyle: FontStyle.normal,
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            letterSpacing: 1,
          ),
          subtitle2: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w600
          ),
          headline1: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400
          ),
        ),
        appBarTheme:  const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: TextTheme(
            subtitle1: GoogleFonts.lato(
                fontSize: 30,
                color: Colors.white70,
                fontWeight: FontWeight.w600
            ),
            subtitle2: GoogleFonts.lato(
                fontSize: 25,
                color: Colors.white70,
                fontWeight: FontWeight.w600
            ),
            headline1: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white70,
                fontWeight: FontWeight.w600
            )
        ),
      ),
      themeMode: ThemeMode.light,
      home: const CountriesListPage(),
    );
  }
}
