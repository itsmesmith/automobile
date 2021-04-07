import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return  Container(

        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cross Fire RM250",textAlign: TextAlign.left,style: TextStyle(fontSize: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PhysicalModel(color: Colors.green,
                child: Container(
                  height: 80,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Text('Last Servicing \n 2nd December, 2020', style: TextStyle(
                      fontSize: 18.5,color: Colors.white),),
                ),
                borderRadius: BorderRadius.circular(10),
                  elevation: 8,
                ),
                PhysicalModel(color: Colors.green,
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Text('Next Servicing \n 2nd December, 2021', style: TextStyle(
                        fontSize: 18.5,color: Colors.white),),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  elevation: 8,
                ),
              ],
            ),
          ],
        ) ,


    );
  }
}
