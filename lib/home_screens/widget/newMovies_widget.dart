import 'package:flutter/material.dart';

class NewmoviesWidget extends StatelessWidget {
  const NewmoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'New Movies',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 4; i++)
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "movieScreen");
                },
                child: Container(
                  width: 200,
                  height: 330,
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 77, 77, 77),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 77, 77, 77),
                          spreadRadius: 1,
                          blurRadius: 4,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        //  borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/images7.jpg",
                          width: 200,
                          height: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Movie Title Here",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Action/Adventure",
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_outlined,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "8.5",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      )
    ]);
  }
}
