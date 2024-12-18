import 'package:flutter/material.dart';
import 'package:flutter_task1/home_screens/widget/newMovies_widget.dart';
import 'package:flutter_task1/home_screens/widget/upcoming_widget.dart';
import 'package:flutter_task1/navBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 0, 22),
        title: Padding(
          padding:  EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Hello Alex',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'What to watch',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
                
              ),
             CircleAvatar(backgroundImage: AssetImage("assets/avatar.png"),)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(10),
                  ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search"
                  ),
                ),
              ),
              SizedBox( height: 15,),
             UpcomingWidget(),
             SizedBox(height: 35,),
             NewmoviesWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),

    );
  }
}
