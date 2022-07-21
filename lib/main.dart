import 'package:flutter/material.dart';
import 'package:logmovies/screens/home.dart';
import 'package:logmovies/screens/login.dart';
import 'package:logmovies/screens/sign_up.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: '[YOUR_SUPABASE_URL]',
    anonKey: '[YOUR_SUPABASE_ANON_KEY]',
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