import 'package:firstapp/appBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          title: Row(
            children: [
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              Container(
                child: Text(
                  "CRIC",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 05, top: 08),
                child: Text(
                  "NEWS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 400,
              child: Image.network(
                  "https://i.pinimg.com/600x315/cb/a0/0f/cba00ff4baf9ccee7464993be710980b.jpg"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "Mahendra Singh Dhoni (About this soundpronunciation (help·info) born 7 July 1981), is a former Indian international cricketer who captained the Indian national team in limited-overs formats from 2007 to 2017 and in Test cricket from 2008 to 2014. MS Dhoni is the only captain in the history of cricket to win all ICC trophies.[2] Under his captaincy, India won the inaugural 2007 ICC World Twenty20, the 2010 and 2016 Asia Cups, the 2011 ICC Cricket World Cup and the 2013 ICC Champions Trophy. A right-handed middle-order batsman and wicket-keeper, Dhoni is one of the highest run scorers in One Day Internationals (ODIs) with more than 10,000 runs scored and is considered an effective 'finisher' in limited-overs formats.",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
