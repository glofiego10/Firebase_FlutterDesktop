import 'package:firedart/auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    prueba();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text("text"),
        ),
      ),
    );
  }
}

prueba() async {
  await FirebaseAuth.instance.signIn("a@a.com", "123456");
  var user = await FirebaseAuth.instance.getUser();
  print(user.id);
}
