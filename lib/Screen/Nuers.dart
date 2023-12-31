import 'package:flutter/material.dart';

class Nuers extends StatelessWidget {
  const Nuers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("عن الممرض"),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset("images/Ellipse 1.png"),
                Text(
                  "علاء محمد علي",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "تمريض سريري",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 5),
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 5),
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 5),
                    SizedBox(height: 20),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Let us see the full code of the above explanation in the Flutter project and run it in the emulator to get the output. Let us see the full code of the above explanation in the Flutter project and run it in the emulator to get the output.",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text("التقييمات (20)"),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your logic to navigate to the reviews page
                        },
                        child: Text(
                          "شاهد الكل",
                          style: TextStyle(
                            color: Color(int.parse("0xFF02B0B1")),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // ListView(
            //   children: [
            Column(
              children: [
                listcard(
                  data1: "محمد علي ",
                  data2: "اسعاف جيد جد ومتقن شغله",
                ),
                listcard(
                  data1: "محمد علي ",
                  data2: "اسعاف جيد جد ومتقن شغله",
                ),
                listcard(
                  data1: "محمد علي ",
                  data2: "اسعاف جيد جد ومتقن شغله",
                ),
                listcard(
                  data1: "محمد علي ",
                  data2: "اسعاف جيد جد ومتقن شغله",
                ),
              ],
            ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text("طلب"),
                style: ElevatedButton.styleFrom(
                  primary: Color(int.parse("0xFF02B0B1")),
                  onPrimary: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class listcard extends StatelessWidget {
  // final Icon icon;
  final String data1;
  final String data2;
  const listcard({
    super.key,
    // required this.icon,
    required this.data1,
    required this.data2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data1),
      subtitle: Text(data2),
      leading: Icon(Icons.person),
      trailing: Icon(Icons.star, color: Colors.yellow),
    );
  }
}
