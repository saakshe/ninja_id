import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({ Key? key }) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninja_level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar( 
        title: Text(
          'Ninja ID Card',
          style: TextStyle(
            color: Colors.white70,
            fontFamily: 'Montserrat',
           ),
        ),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            ninja_level += 1;
          });
        },
        child: Icon(Icons.add,),
        backgroundColor: Colors.grey[800],
        ),
        
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                  // backgroundImage: AssetImage('assets/images/ninja_baby.png'),
                  radius: 40,
                  
                  ),
            ),
           Divider(
            height: 60,
            color: Colors.grey[800],
           ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
                 ),
                 ),
            SizedBox(height: 10,),
            Text(
              'Saakshi Adiga',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                 ),
                 ),
          SizedBox(height: 30,),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
                 ),
                 ),
            SizedBox(height: 10,),
            Text(
              '$ninja_level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                 ),
                 ),
            SizedBox(height: 30,),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
                ),
              SizedBox(width: 10),
              Text(
              'saakshiadiga@gmail.com',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                letterSpacing: 1,
                ),  
              ),
            ],),
          ],
          ),
        ),

    );
  }
}

