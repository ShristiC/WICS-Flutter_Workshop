import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Restaurant> res = [
    Restaurant(name: 'Dons', imagePath: 'assets/images/dons.jfif'),
    Restaurant(name: 'Panda Express', imagePath: 'assets/images/pandaexpress.png'),
    Restaurant(name: 'Pluckers', imagePath: 'assets/images/pluckers.jfif'),
    Restaurant(name: 'UTea Pho', imagePath: 'assets/images/uteapho.jfif')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
        title: Text(
          'Food at UT',
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView.builder(
        itemCount: res.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 3,
            color: Colors.blue[200],
            child: ListTile(
              title: Image.asset(res[index].imagePath),
              subtitle: Text(
                res[index].name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CountingPage(title: res[index].name);
              }))
            ),
          );
        })
    );
  }
}

class CountingPage extends StatefulWidget {
  String title;
  CountingPage({this.title});
  @override
  _CountingPageState createState() => _CountingPageState();
}

class _CountingPageState extends State<CountingPage> {
  int _counter = 0;

  void incrementCount() {
    print(_counter);
    setState(() {
      _counter ++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(Icons.person, size: 100),
              onTap: () => incrementCount(),
            ),
            Text('$_counter', style: TextStyle(fontSize: 100),)
          ]
        ),
      ),
    );
  }
}

class Restaurant {
  String name;
  String imagePath;

  Restaurant({this.name, this.imagePath});
}