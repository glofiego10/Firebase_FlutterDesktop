import 'package:firedart/auth/firebase_auth.dart';
import 'package:fluent_ui/fluent_ui.dart';
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
    int index = 0;
    return NavigationView(
      pane: NavigationPane(
          onChanged: (newIndex) {
            setState(() {
              index = newIndex;
              print(index);
            });
          },
          selected: index,
          items: [
            PaneItem(icon: Icon(Icons.code), title: Text("Sample Page 1")),
            PaneItem(
                icon: Icon(Icons.desktop_windows_outlined),
                title: Text("Sample Page 2"))
          ]),
      content: NavigationBody(
        index: index,
        children: [
          ScaffoldPage(
            header: Text(
              "Sample Page 2",
              style: TextStyle(fontSize: 60),
            ),
            content: Center(
              child: Text("Welcome to Page 2!"),
            ),
          ),
          ScaffoldPage(
            header: Text(
              "Sample Page 1",
              style: TextStyle(fontSize: 60),
            ),
            content: Center(
              child: Text("Welcome to Page 1!"),
            ),
          ),
        ],
      ),
    );
  }
}

prueba() async {
  await FirebaseAuth.instance.signIn("a@a.com", "123456");
  var user = await FirebaseAuth.instance.getUser();
  print(user.id);
}
