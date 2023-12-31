import 'package:flutter/material.dart';

class NavBtom extends StatelessWidget {
  const NavBtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Color(int.parse("0xFF02B0B1")),
      unselectedItemColor:
          Colors.grey, // يمكنك تغيير هذا اللون إلى اللون الذي تريده
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken),
          label: 'رعاية منزلية',
          // onTap: () => Navigator.pushNamed(context, '/OrderNurse'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'المرضى',
        ),
      ],
    );
  }
}
