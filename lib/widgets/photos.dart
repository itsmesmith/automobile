import 'package:flutter/material.dart';
class Photos extends StatefulWidget {
  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200.0,
        child:ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      "New Products",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 160.0,
                        height: 120.0,
                        child: Image.asset('assets/images/bike1.jpg',fit: BoxFit.fitHeight)

                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                        width: 160.0,
                        height: 120.0,
                        child: Image.asset('assets/images/bike2.jpg',fit: BoxFit.fitHeight,)
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                        width: 160.0,
                        height: 120.0,
                        child: Image.asset('assets/images/bike3.jpg',fit: BoxFit.fitHeight)
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );

  }
}
// Row(
// children: [
// Expanded(child: Image.asset('assets/images/bike1.jpg',)),
// Expanded(child: Image.asset('assets/images/bike2.jpg',),flex: 2,),
// Expanded(child: Image.asset('assets/images/bike3.jpg',)),
//
// ],
// )
// Image(image:
// AssetImage('assets\images\servicecenter.jpg',
// ),
// ),
// );