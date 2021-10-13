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
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 15,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Row(
            children: [
              Text(
                "Shopit",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.shopping_bag,
                  size: 15,
                  color: Colors.pinkAccent,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: (Icon(
                Icons.search,
                size: 20,
                color: Colors.white,
              )),
              onPressed: () {},
            ),
            SizedBox(
              width: 02,
            ),
            IconButton(
              icon: Icon(
                Icons.notification_important,
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          height: 100,
          width: double.infinity,
          color: Colors.purple[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://rukminim1.flixcart.com/image/416/416/kqwobrk0/headphone/3/n/b/bassheads-100-boat-original-imag4tgdrpxfh3pk.jpeg?q=70",
                height: 90,
                width: 120,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Boat Earphone",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "222M",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                child: Text("Buy Now"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
