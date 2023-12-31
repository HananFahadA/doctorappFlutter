import 'package:flutter/material.dart';

class ReguestPack extends StatelessWidget {
  const ReguestPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الطلبات السابقة")),
      body: ListView(children: [
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: " تقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم"),
        listcard(data1: "علا عمر", data2: "تمريض سريري", data3: "تم التقييم")
      ]),
    );
  }
}

class listcard extends StatelessWidget {
  // final Icon icon;
  final String data1;
  final String data2;
  final String data3;
  const listcard({
    super.key,
    // required this.icon,
    required this.data1,
    required this.data2,
    required this.data3,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data1),
      subtitle: Text(data2),
      leading: Icon(Icons.person),
      trailing: Text(data3),
    );
  }
}
