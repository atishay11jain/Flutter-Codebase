import 'package:firstapp/appBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<Map<dynamic, String>> questions = [
    {
      "ques": "Which is our national Song",
      1: "Vande Mataram",
      2: "Jane Gane Mana",
      3: "Teri Mitti",
      4: "MatraBhoomi",
      "ans": "Vande Mataram",
    },
    {
      "ques": "Which is our national Animal",
      1: "Lion",
      2: "Cheetah",
      3: "Tiger",
      4: "Panther",
      "ans": "Tiger",
    },
    {
      "ques": "Which is our national Flower",
      1: "Rose",
      2: "Sunflower",
      3: "Lotus",
      4: "Lilly",
      "ans": "Lotus",
    },
  ];
  int idx = 0;
  int right = 0;
  int wrong = 0;
  checkAns(String ans) {
    if (idx < questions.length - 1) {
      if (ans == questions[idx]["ans"]) {
        setState(() {
          right++;
          idx++;
        });
      } else {
        setState(() {
          wrong++;
          idx++;
        });
      }
    } else {
      setState(() {
        idx = 0;
        right = 0;
        wrong = 0;
      });
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   color: Colors.red[700],
              //   height: 50,
              //   width: double.infinity,
              //child:
              Text(
                "${questions[idx]["ques"]}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple[300]),
                // textAlign: TextAlign.center,
              ),
              // ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "${questions[idx][1]}",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.pink[300]),
                  onPressed: () {
                    checkAns(questions[idx][1]);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "${questions[idx][2]}",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.pink[300]),
                  onPressed: () {
                    checkAns(questions[idx][2]);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "${questions[idx][3]}",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.pink[300]),
                  onPressed: () {
                    checkAns(questions[idx][3]);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "${questions[idx][4]}",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.pink[300]),
                  onPressed: () {
                    checkAns(questions[idx][4]);
                  },
                ),
              ),
              Text("Score :  Right:- $right Wrong: $wrong"),
            ],
          ),
        ),
      ),
    );
  }
}
