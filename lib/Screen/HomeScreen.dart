// import 'package:ap/Screen/reguestPack.dart';
import 'package:ap/Screen/NavBtom.dart';
import 'package:flutter/material.dart';
import 'CardData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اهلا بك يا حنان")),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // ignore: prefer_const_constructors
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/Nuers'),
                    child: CardData(
                      data1: "خدمات التمريض",
                      data2: "مع افضل طاقم تمريض",
                      data3: "طلب",
                      img: 'images/Group 118.png',
                    ),
                  ),
                  CardData(
                    data1: "طلب الادوية",
                    data2: "اطلب كل ماتحتاجه من ادوية",
                    data3: "طلب",
                    img: 'images/Frame (1).png',
                  ),
                  CardData(
                    data1: "طلب اسعاف",
                    data2: "اطلب اسعاف  مجهزه او عادية   ",
                    data3: "طلب",
                    img: 'images/Screen Shot 2023-01-13 at 1.19 1.png',
                  ),
                  CardData(
                    data1: "اطلب طبيب",
                    data2: "اطلب اخصائي اواستشاري ",
                    data3: "طلب",
                    img: 'images/Screen Shot 2023-01-13 at 4.48 1.png',
                  ),
                  CardData(
                    data1: "تحاليل معملية ",
                    data2: " اطلب كل ماتحتاجة من تحاليل   ",
                    data3: "طلب",
                    img: 'images/3635443 1.png',
                  ),
                  CardData(
                    data1: "الجروح المتقدمة",
                    data2: "علاج الجروح  المتقدمة تجدة هنا",
                    data3: "طلب",
                    img: 'images/Group (1) - Copy.png',
                  ),
                  CardData(
                    data1: "رعاية منزلية",
                    data2: "اطلب كل ماتحتاجة من رعاية منزلية",
                    data3: "طلب",
                    img: 'images/Frame (2).png',
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, '/Profile'),
                        child: Container(
                          width: (MediaQuery.of(context).size.width / 2) - 10,
                          height: 200,
                          child: Card(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/Frame.png"),
                                  Text("البروفايل")
                                ]),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, '/ReguestPack'),
                        child: Container(
                          width: (MediaQuery.of(context).size.width / 2) - 10,
                          height: 200,
                          child: Card(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/Vector.png"),
                              Text("الطلبات السابقة")
                            ],
                          )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text("مرحبا حنان"))),
            ListTile(
              title: Text("ترشيح ممرض"),
            ),
            ListTile(
              title: Text(" التواصل عن طريق الواتس اب"),
            ),
            ListTile(
              title: Text(" الطلبات السابقة"),
            ),
            ListTile(
              title: Text(" البروفايل"),
            ),
            ListTile(
              title: Text(" التسعيرة"),
            ),
            ListTile(
              title: Text(" تسجيل الخروج"),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavBtom(),
    );
  }
}
