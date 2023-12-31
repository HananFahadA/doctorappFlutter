import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final String img;
  final String data1;
  final String data2;
  final String data3;

  const CardData({
    Key? key,
    required this.img,
    required this.data1,
    required this.data2,
    required this.data3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Container(
              child: Image.asset(img),
              width: 200,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(data2),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () => {},
                    child: Text(data3),
                    style: ElevatedButton.styleFrom(
                      primary: Color(int.parse("0xFF02B0B1")),
                      onPrimary: Colors.white,
                    ),
                  )
                ],
              ),
              height: 150,
            )
          ],
        ),
        height: 200,
      ),
    );
  }
}
