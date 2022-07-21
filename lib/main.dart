import 'package:flutter/material.dart';
import 'package:logmovies/screens/home.dart';
import 'package:logmovies/screens/login.dart';
import 'package:logmovies/screens/sign_up.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://nzwnbnttnchviwhiqxdk.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im56d25ibnR0bmNodml3aGlxeGRrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDc2Mjc0NTIsImV4cCI6MTk2MzIwMzQ1Mn0.Oi3aw4VHRq-oAAI_Q_V8rMSgguZwHJUW-1H_vPPRyG0',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginPage(),
        '/signup': (_) => const SignUpPage(),
        '/home': (_) => const HomeScreen(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.green
          )
        )
      ),
      home: const LoginPage(),
    );
  }
}