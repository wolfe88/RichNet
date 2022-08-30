import 'package:flutter/material.dart';
import 'package:richnet/home_page.dart';
import 'package:richnet/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  String titleOnRootPage = "RichNet";
  int counter = 0;
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleOnRootPage),
      ),
      body: pages[currentpage],
      backgroundColor: Colors.pink,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          if (counter % 2 == 1) {
            titleOnRootPage = "Money makes you crazy, let poors live healthy.";
          } else {
            titleOnRootPage = "RichNet $counter";
          }
          setState(() {});
        },
        child: const Icon(Icons.access_alarm_sharp),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.abc_rounded), label: "lbl"),
          NavigationDestination(icon: Icon(Icons.abc_rounded), label: "lbl2"),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              currentpage = index;
            },
          );
        },
        selectedIndex: currentpage,
      ),
    );
  }
}
