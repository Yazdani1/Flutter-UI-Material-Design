import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new ListView(
        children: <Widget>[

          SizedBox(height: 10.0,),
          new Container(
            margin: EdgeInsets.all(10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                new IconButton(
                    icon: new Icon(Icons.menu),
                    onPressed: ()=>debugPrint("menu")
                ),
                new FloatingActionButton(
                    onPressed: null,
                  backgroundColor: Colors.purple.withOpacity(0.5),
                  mini: true,
                  elevation: 0.0,
                  child: new Icon(Icons.shopping_cart,color: Colors.black,size: 27.0,),
                )
              ],
            ),
          )

        ],
      ),

    );
  }
}

