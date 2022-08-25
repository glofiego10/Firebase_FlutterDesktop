import 'package:flutter/material.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter_application_1/ui/pages/home/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseAuth.initialize(
      'AIzaSyDdKzHsueQj0pVVr2kdJOAnFo-MD3ytHlE', VolatileStore());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Material App',
      home: const HomePage(),
    );
  }
}
