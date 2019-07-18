import 'package:flutter/material.dart';

import 'strings.dart';

//1. Here is our main function, so Execution Start Point
void main() => runApp(MyApp());



//2. Here 'MyApp' StatelessWidget
class MyApp extends StatelessWidget {
  

  //7.Here we'll create 'titleSelection' widget

  Widget titleSelection = Container(

    

    child: Column(

      //8.Here 'mainAxisAlignment' aligns our text geading & give space around both side of our text
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: <Widget>[


        //Title 
        Padding(

          padding: const EdgeInsets.all(8.0),

          child: Text(

            Strings.appHeadingTitle,

            style: TextStyle(

              color: new Color(0xff622F74),

              fontWeight: FontWeight.bold,

              fontSize: 30.0,

            )

          ),


        ),


        
        //Subtitle
        Padding(

          padding: const EdgeInsets.all(8.0),

          child: Text(

            Strings.appsubHeadingTitle,

            style: TextStyle(

              color: new Color(0xff622F74),

              fontWeight: FontWeight.bold,

              fontSize: 20.0,

            )

          ),


        )


      ],

    ),

  );




  @override
  Widget build(BuildContext context) {


    //3. Here return type is 'MaterialApp'
    return MaterialApp(

      //9. To Remove the Debug Icon

      debugShowCheckedModeBanner: false,

      //4.title name
      title: Strings.appBarTitle,
    
      theme: ThemeData(

        //5. Color
        primaryColor: new Color(0xff622F74),

      ),


      //6. 
      home: Scaffold(

        appBar: AppBar(

          title: Text(Strings.appBarTitle),

        ),

        body: ListView(

          children: <Widget>[

            titleSelection,

          ],

        ),

      ),
    
    );
  }
}
