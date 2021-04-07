import 'package:automobile/models/users.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class SaleMaps extends StatefulWidget {
  @override
  _SaleMapsState createState() => _SaleMapsState();
}

class _SaleMapsState extends State<SaleMaps> {
  GoogleMapController _controller;
  PageController _pageController;
  List<Marker> allMarkers = [];
  @override
  void initState() {
    super.initState();
    userLists.forEach((element) {
      allMarkers.add(
          Marker(
          markerId: MarkerId(element.name),
          draggable: false,
          infoWindow:
          InfoWindow(title: element.name, snippet: element.phone),
          position: element.location));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }
  _userList(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () {
            // moveCamera();
          },
          child: Stack(children: [
            Center(
                child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    height: 125.0,
                    width: 275.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(children: [

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userLists[index].name,
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  userLists[index].phone,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width: 170.0,
                                  child: Text(
                                    userLists[index].location.toString(),
                                    style: TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ])
                        ]))))
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height-50,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
                onMapCreated: mapCreated,
                markers: Set.from(allMarkers),
                // mapType: MapType.normal,
                initialCameraPosition:
                CameraPosition(target: LatLng(27.700769, 85.300140), zoom: 11),
                ),
                ),
          Positioned(
            bottom: 20.0,
            child: Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: userLists.length,
                itemBuilder: (BuildContext context, int index) {
                  return _userList(index);
                },
              ),
            ),
          )
                ],)

    );
  }

void mapCreated(controller){
  setState((){
    _controller = controller;
  });
}
}

