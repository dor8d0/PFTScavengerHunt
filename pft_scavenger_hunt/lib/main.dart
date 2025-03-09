import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedFood;
  int? dogAge;
  List<String>? answers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            SizedBox(width: 300, height: 200, child: Image.asset("images\\LSU_Athletics_logo.svg.png", fit: BoxFit.scaleDown,)),
            SizedBox(width: 300, height: 200, child: Image.asset("images\\lsu-patrick-taylor-hall-exterior-architecture.jpg", fit: BoxFit.scaleDown,)),
            SizedBox(width: 300, height: 200, child: 
              ListView(children: [ElevatedButton(onPressed: (){}, child: Text("Q1")), 
                Text("Q2"),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),],
              )
            )
          ],
        ),
      ),
    );
  }
}

//First question screen

