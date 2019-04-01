import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    tabController=new TabController(length: 4, vsync: this);
    super.initState();
  }

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
          ),//container end
          new Padding(
              padding: const EdgeInsets.all(14.0),
            child: new Text("Material UI",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
            ),
          ),
          new Padding(
              padding: EdgeInsets.all(15.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.red,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.9),
              isScrollable: true,
              tabs: <Widget>[

                new Tab(
                  child: new Text("First",
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                  ),
                ),
                new Tab(
                  child: new Text("Second",
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
                new Tab(
                  child: new Text("Third",
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),

                new Tab(
                  child: new Text("Fourth",
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),



              ],
            ),
          ),//end tabbar

          new Container(
            height: MediaQuery.of(context).size.height-200.0,
            child: TabBarView(
                controller: tabController,
              children: <Widget>[

              ],
            ),
          )

        ],
      ),

    );
  }
}

