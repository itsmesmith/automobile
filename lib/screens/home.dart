
import 'package:automobile/widgets/Details.dart';
import 'package:automobile/widgets/crousel.dart';
import 'package:automobile/widgets/events.dart';
import 'package:automobile/widgets/photos.dart';
import 'package:flutter/material.dart';

import 'locations.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text("APP"),
        actions: [
          IconButton(icon: Icon(Icons.verified_user), onPressed: null)
        ],
      ),
      drawer: Drawer(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Manxe(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green[50],
                              child: IconButton(icon: Icon(
                                Icons.sports_motorsports,
                                color: Colors.green,),),
                            ),
                            Text('Spare Parts', style: TextStyle(
                                color: Colors.green
                            ),)
                          ],
                        ),

                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue[50],
                              child: IconButton(icon: Icon(
                                Icons.bookmark, color: Colors.blue,),),
                            ),
                            Text('Book Service', style: TextStyle(
                                color: Colors.green
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red[50],
                              child: IconButton(
                                icon: Icon(Icons.history, color: Colors.red,),
                              onPressed: (){
                                  setState(() {
                                    Navigator.push(context, new MaterialPageRoute(builder: (context)=>Details()
                                    ));
                                  });
                              },),
                            ),
                            Text('History', style: TextStyle(
                                color: Colors.green
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.purple[50],
                              child: IconButton(icon: Icon(
                                Icons.location_pin, color: Colors.purple,)
                                ,onPressed: (){
                                setState(() {
                                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>locations()
                                  ));
                                });
                                },),
                            ),
                            Text('Locations', style: TextStyle(
                                color: Colors.green
                            ),)
                          ],
                        ),
                      ),
                    ],),
                ),
              ),
            ),
            Details(),
            Events(),
            Photos(),
          ],
        ),
      ),
    );
  }
}

