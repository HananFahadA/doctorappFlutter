import 'package:ap/Screen/NavBtom.dart';
import 'package:flutter/material.dart';

class OrderNurse extends StatelessWidget {
  const OrderNurse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("رعاية منزلية")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "",
                    labelText: "تفاصيل",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "",
                    labelText: "رقم الهاتف",
                    prefixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "",
                    labelText: "العنوان",
                    prefixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.location_city)),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("طلب"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 20),
                    primary: Color(int.parse("0xFF02B0B1")),
                    onPrimary: Colors.white,
                  ),
                )
              ],
            ),
          ]),
        ),
        bottomNavigationBar: NavBtom(),
      ),
    );
  }
}
