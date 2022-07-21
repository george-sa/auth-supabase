import 'package:flutter/material.dart';
import '../services/alert.dart';
import '../services/auth_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends AuthState<HomeScreen> {
  Future<void> _signOut() async {
    final response = await supabase.auth.signOut();
    if (response.error != null) {
      print('Error: ${response.error?.message}');
    } else {
      Navigator.pushReplacementNamed(context, 'login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela da Home')),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          children: [
            const Text('Home'),
            const SizedBox(height: 18),
            ElevatedButton(onPressed: _signOut, child: const Text('Sair')),
          ]),
    );
  }
}
