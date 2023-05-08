import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: const [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xff4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'DP SHOP',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge(
            backgroundColor: Colors.red,
            label: Text(
              '3',
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 32,
              color: Color(0xff4C53A5),
            ),
          ),
        ],
      ),
    );
  }
}
