import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Container(
            margin: EdgeInsets.only(left: 100),
            child: Text(
              "True Identity",
              style: TextStyle(
                  color: Colors.pinkAccent[100],
                  fontSize: 20,
                  fontFamily: "Great Vibes"),
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.orange[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "images/myImage.jpg",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Atishay Jain",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            size: 20,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Image.network(
                  "https://images.financialexpress.com/2021/03/MS-Dhoni-IPL-2021-Chennai-Super-Kings-Full-Squad-CSK.jpg",
                  height: 200,
                  width: 280,
                ),
                Container(
                  height: 80,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.thumb_up,
                            size: 20,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.comment,
                            size: 20,
                            color: Colors.black,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.grey,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
