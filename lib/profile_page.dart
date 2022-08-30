import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("data ${(index + 1)}"),
          leading: Icon(Icons.account_tree_outlined),
          trailing: Icon(Icons.arrow_back),
          focusColor: Colors.green,
          hoverColor: Colors.lime,
          tileColor: Colors.amber,
          horizontalTitleGap: 50,
          contentPadding: EdgeInsets.all(16.0),
        );
      },
    );
  }
}
