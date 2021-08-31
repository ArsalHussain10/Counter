import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int counter=0;
   bool pressed=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      home: Scaffold(

        body: Container(

          decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage('images/backgroundimage.jpg'),
            fit: BoxFit.fill,
            ),

          ),
          child: SafeArea(

            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 100,left: 50,right: 20),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$counter',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      GestureDetector(
                        onTapCancel: (){
                          setState(() {
                            pressed=!pressed;
                          });
                        },
                        onTap: (){

                          setState(() {
                            counter=0;
                            pressed=!pressed;
                          });

                        },
                        child: CircleAvatar(
                          backgroundColor: pressed?Colors.blue:Colors.red,

                          radius: 40,
                            child: Icon(Icons.refresh,
                        color: Colors.white,

                        size: 60,
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,

                  margin: EdgeInsets.only(top: 170),
                  child: FlatButton(

                    onPressed: (){
                      setState(() {
                        counter++;
                      });

                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(250)),
                    color: Colors.grey[900],
                    child: Icon(Icons.adjust_rounded,
                    size: 50,
                    ),

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
