import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 87, 87, 87),
                      ),
                      child: Icon(Icons.add,color: Colors.white,size: 30,),
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 87, 87, 87),
                      ),
                      child: Icon(Icons.favorite_border,color: Colors.white,size: 30,),
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 87, 87, 87),
                      ),
                      child: Icon(Icons.download,color: Colors.white,size: 30,),
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 87, 87, 87),
                      ),
                      child: Icon(Icons.share,color: Colors.white,size: 30,),
                    )
                   ],
                  ),
                  
    );
  }
}