import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


      ),
      home : MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  _MyHomePageState createState () => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  Widget build (BuildContext context){
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(height: 60.0),
          Padding(padding:
           EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Kategory",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ],
            ),
          ),

          SizedBox(height: 60.0),
          Container(
            height: 200.0,
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 3/2),
              children: <Widget>[
                _gridItem(Icons.shopping_bag),
                _gridItem(Icons.shopping_cart),
                _gridItem(Icons.arrow_drop_down_circle),
                _gridItem(Icons.bluetooth_searching),
                _gridItem(Icons.add_location),
                _gridItem(Icons.arrow_drop_down_circle),
              ],
            ),
          )

        ],
      ),
    );
  }



  _gridItem(icon){
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon, size: 30.0,
            color: Colors.white,
          ),

          backgroundColor: Colors.red,maxRadius: 30.0,
        ),
      ],
    );
  }




  _top (){
    return Container(
      padding: EdgeInsets.all (16.0),
      decoration: BoxDecoration(
    color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        )
    ),

      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/girl.jpg"),
                  ),

                  SizedBox( width: 10.0),
                  Text("Hi, putu",style: TextStyle(color: Colors.white,fontSize: 20.0,),
                  ),
                ],
              ),

              IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: null)
            ],
          ),

          SizedBox(height: 30.0,),
          TextField(
            decoration: InputDecoration(
              hintText: "Mau cari apa ?",
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),

            ),
          )
        ],
      )
    );
  }
}