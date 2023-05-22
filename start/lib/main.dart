import 'package:flutter/material.dart';

void main() => runApp(MyCard());

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.amber[500],
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50.0,
                backgroundImage: AssetImage('images/logo-192x192.png'),
              ),
              Text(
                'Logo',
                style: TextStyle(
                  fontFamily: 'Playfair Display',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Soy programador',
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
                child: SizedBox(
                  height: 20.0,
                  width: 300,
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('809-354-5543'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('pauljosep@gmail.com'),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
