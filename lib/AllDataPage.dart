import 'package:flutter/material.dart';

class AllDataPage extends StatefulWidget {
  @override
  _AllDataPageState createState() => new _AllDataPageState();
}

class _AllDataPageState extends State<AllDataPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[

        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getData("asset/a.jpg", "35", "Apple", "Fruits"),
              new SizedBox(width: 7.0,),
              getData("asset/b.jpg", "85", "Orange", "Mini"),
              new SizedBox(width: 7.0,),
              getData("asset/c.jpg", "39", "Lichi", "Food"),
            ],
          ),
        ),//container end

      ],
    );
  }

   getData(String imgPath,String price,String planType,String palnName){

    return Stack(
      children: <Widget>[
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green
            ),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: <Widget>[

                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new SizedBox(height: 10.0,),
                        new Text(palnName,
                        style: TextStyle(fontSize: 18.0,color: Colors.white),
                        ),
                        new Text(price,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white
                        ),
                        )
                      ],
                    )
                  ],
                ),//end first row
                new SizedBox(height: 10.0,),
                new Image(
                    height: 100.0,
                  image: AssetImage(imgPath),
                ),//image end
                new SizedBox(height: 10.0,),
                new Row(

                  children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        
                        new Text("Total Cost",
                        style: TextStyle(color: Colors.white),
                        ),
                        new SizedBox(height: 10.0,),
                        new Text("Hundred Dolar",
                        style: TextStyle(fontSize: 22.0,color: Colors.white),
                        )
                        
                      ],
                    )
                  ],
                )
                
                new SizedBox(height: 15.0,),

                new Row(
                  children: <Widget>[

                    new Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1.0
                        )
                      ),
                      child: new Icon(Icons.shop,color: Colors.white,),
                    ),
                    new SizedBox(width: 10.0,),
                    new Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0
                          )
                      ),
                      child: new Icon(Icons.card_giftcard,color: Colors.white,),
                    ),
                    new SizedBox(width: 10.0,),
                    new Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0
                          )
                      ),
                      child: new Icon(Icons.search,color: Colors.white,),
                    ),
                    new SizedBox(width: 10.0,),
                    
                    new Container(
                      height: 30.0,
                      width: 30.0,
                      child: new Icon(Icons.wallpaper,color: Colors.white,),
                    )
                    


                  ],
                )

              ],
            ),
          ),
        )
      ],
    );

  }

}

