import 'package:flutter/material.dart';
import 'package:pageapp_064/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  double _weight = 100;
  double _height = 100;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("this is my first page",
              style: TextStyle(
                fontSize: 16,
              )),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Center(
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 16, 37, 54),
                  radius: 70,
                  child: Text("YOUR LOGO",style: TextStyle(fontSize: 21,color: Colors.white),),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "REGISTER",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // child: ConstrainedBox(
              //   constraints: BoxConstraints(
              //     maxHeight: 60, // Set the height you want
              //     maxWidth: 50, // Set the width you want,
              //   ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // child: ConstrainedBox(
              //   constraints: BoxConstraints(
              //     maxHeight: 60, // Set the height you want
              //     maxWidth: 50, // Set the width you want,
              //   ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              // child: ConstrainedBox(
              //   constraints: BoxConstraints(
              //     maxHeight: 60, // Set the height you want
              //     maxWidth: 50, // Set the width you want,
              //   ),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Weight",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Slider(
                  min: 1,
                  max: 100,
                  value: _weight,
                  onChanged: (value) {
                    setState(() {
                      _weight = value;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Height",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                  min: 1,
                  max: 100,
                  value: _height,
                  onChanged: (value) {
                    setState(() {
                      _height = value;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 140),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Next",style: TextStyle(fontSize: 21,color: Colors.blue[900]),),
              ),
            ),
          ],
        ));
  }
}