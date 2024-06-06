import 'package:flutter/material.dart';

class ShowImage extends StatefulWidget {
  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Image'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text('My Image',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            height: 50,
          ),
          Center(
            child: ClipOval(
                child: Image(
              width: 150,
              height: 150,
              image: AssetImage('images/star.png'),
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star_half_sharp),
              Icon(Icons.star_border_sharp)
            ],
          ),
          Container(
            height: 100,
            alignment: Alignment.center,
            child: Text('Ini adalah contoh show image saya dengan flutter'),
          ),
        ],
      ),
    );
  }
}
