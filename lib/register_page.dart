import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isSwitch = false;
  bool? isCheck = false;
  var color1 = const Color.fromARGB(255, 196, 136, 115);
  var color2 = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register here"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  color1 = Colors.lightGreenAccent;
                });
              },
              icon: const Icon(Icons.abc))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/register_img.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.amber,
              width: double.infinity,
              child: Center(
                child: Text(
                  "data",
                  style: TextStyle(
                    color: color1,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                color1 = color2;
                setState(() {});
              },
              child: const Text("elevatedbtn"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: isSwitch ? Colors.black : Colors.red),
              onPressed: () {
                color1 = color2;
                setState(() {});
              },
              child: const Text("outlinedbtn"),
            ),
            TextButton(
              onPressed: () {
                color1 = color2;
                setState(() {});
              },
              child: const Text("elevatedbtn"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (() {
                setState(() {
                  color1 = Colors.black;
                });
              }),
              child: Container(
                color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.amber,
                    ),
                    Text("Row Widget"),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool boolval) {
                  setState(() {
                    isSwitch = boolval;
                  });
                }),
            Checkbox(
                value: isCheck,
                onChanged: (bool? boolval) {
                  setState(() {
                    isCheck = boolval;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
