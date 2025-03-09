import 'package:flutter/material.dart';

//array for holding answers
List<String> answers = ["N","N","N","N","N"];

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
              ListView(children: [ 
                Text("Choose your question", selectionColor: Color.fromARGB(255, 255, 255, 255),),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Q1Screen()));}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ElevatedButton(onPressed: (){}, child: Text("Q1")),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

//First question screen
class Q1Screen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("Q1 Screen"),
            ElevatedButton(onPressed: (){answers[0] = "A"; Navigator.pop(context);}, child: Text("Answer 1"))
          ],
        ),
      ),
    );
  }
}
