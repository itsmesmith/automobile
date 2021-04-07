

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Color c1 = Colors.white;
  Color d1 = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text("Event",style: TextStyle(color: Colors.blue,fontSize: 20.0),),
          Container(
            padding: EdgeInsets.fromLTRB(5,0,10,0),
            height:150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(children: [
              Container(
                height: 130,
                child: Image(image: AssetImage('assets/images/servicecenter.jpg',),width: 200,
                  fit: BoxFit.fitHeight,
                ),
              ),

          Container(
            padding: const EdgeInsets.all(8.0),
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("First Event",style: TextStyle(
              color:Colors.white,
              fontSize: 23.0
          ),),
              Container(
                // height: 100.0,
                width:160.0,


                child: Text("We have organized this event to demo...",style: TextStyle(
                    fontSize: 18.5,color: Colors.white
                ),),
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      c1=Colors.blueAccent;
                      d1=Colors.white;
                    });
                  },
                  child: Container(
                    width: 200,
                    height:40,
                    decoration: BoxDecoration(
                      color: c1,
                        borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("View All",style: TextStyle(
                        color: d1,
                        fontSize: 20
                      ),),
                    ),
                  )
                ),
              )
          ],),
          ),
        ],),
          )],),
    );
  }
}
