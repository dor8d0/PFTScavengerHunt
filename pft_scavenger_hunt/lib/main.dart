import 'package:flutter/material.dart';

//array for holding answers
List<String> answers = ["None","None","None","None","None"];

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
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Q2Screen()));}, child: Text("Q2")),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Q3Screen()));}, child: Text("Q3")),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Q4Screen()));}, child: Text("Q4")),
                ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Q5Screen()));}, child: Text("Q5")),
                ElevatedButton(onPressed: (){
                  int score = 0;
                  if(answers[0] == "B"){
                    score++;
                  }
                  if(answers[1] == "A"){
                    score++;
                  }
                  if(answers[2] == "D"){
                    score++;
                  }
                  if(answers[3] == "B"){
                    score++;
                  }
                  if(answers[4] == "C"){
                    score++;
                  }

                  //takes you to screen based off score
                  if(score == 0){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FailScreen()));
                  }
                  else if(score < 5){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PassScreen()));
                  }
                  else{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PerfectScreen()));
                  }
                }, child: Text("Submit"))
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
            Text("You answered: "),
            Text(answers[0]),
            ElevatedButton(onPressed: (){answers[0] = "A"; Navigator.pop(context);}, child: Text("Answer 1"))
          ],
        ),
      ),
    );
  }
}

class Q2Screen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("Q2 Screen"),
            Text("You answered: "),
            Text(answers[1]),
            ElevatedButton(onPressed: (){answers[1] = "A"; Navigator.pop(context);}, child: Text("Answer 1"))
          ],
        ),
      ),
    );
  }
}

class Q3Screen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("Q1 Screen"),
            Text("You answered: "),
            Text(answers[2]),
            ElevatedButton(onPressed: (){answers[2] = "A"; Navigator.pop(context);}, child: Text("Answer 1"))
          ],
        ),
      ),
    );
  }
}

class Q4Screen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("Q1 Screen"),
            Text("You answered: "),
            Text(answers[3]),
            ElevatedButton(onPressed: (){answers[3] = "A"; Navigator.pop(context);}, child: Text("Answer 1"))
          ],
        ),
      ),
    );
  }
}

class Q5Screen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("Q1 Screen"),
            Text("You answered: "),
            Text(answers[4]),
            ElevatedButton(onPressed: (){answers[4] = "A"; Navigator.pop(context);}, child: Text("Answer 1"))
          ],
        ),
      ),
    );
  }
}

class FailScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("...Did you even enter the building?"),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Try Again"))
          ],
        ),
      ),
    );
  }
}

class PassScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("You got at least one question wrong"),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Try Again"))
          ],
        ),
      ),
    );
  }
}

class PerfectScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 95, 8, 62),
      body: Center(
        child: Column(
          children: [
            Text("You got every question right!"),
          ],
        ),
      ),
    );
  }
}
