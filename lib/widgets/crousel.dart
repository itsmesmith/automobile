import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Manxe extends StatefulWidget {
  @override
  _ManxeState createState() => _ManxeState();
}

class _ManxeState extends State<Manxe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(height: 200.0,width: MediaQuery.of(context).size.width,
          child: Carousel(
            animationCurve: Curves.easeInOutCirc,
            images: [
              Image.asset('assets/images/bike1.jpg',fit: BoxFit.fill,),
              Image.asset('assets/images/bike2.jpg',fit: BoxFit.fill,),
              Image.asset('assets/images/bike3.jpg',fit: BoxFit.fill,)
            ],
          ),),


        ],
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