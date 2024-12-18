import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 77, 77, 77),
          // borderRadius: BorderRadius.all(Radius.circular(25)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
               Navigator.pushNamed(context, "CategoryScreen");
            },
            child: Icon(
              Icons.category,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
               Navigator.pushNamed(context, "");
            },
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
               Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
