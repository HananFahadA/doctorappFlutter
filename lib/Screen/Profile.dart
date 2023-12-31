import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Center(child: Text("بروفايل"))),
          body: Column(children: [
            Listtitledata(
                icon: Icon(Icons.person), data1: "الاسم", data2: "حنان"),
            Listtitledata(
                icon: Icon(Icons.phone), data1: "الهاتف", data2: "05634938525"),
            Listtitledata(
                icon: Icon(Icons.email),
                data1: "الايميل",
                data2: "test@gamil.com"),
          ])),
    );
  }
}

class Listtitledata extends StatelessWidget {
  final Icon icon;
  final String data1;
  final String data2;

  const Listtitledata({
    Key? key,
    required this.icon,
    required this.data1,
    required this.data2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: this.icon,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.data1),
          Text(this.data2),
        ],
      ),
    );
  }
}
