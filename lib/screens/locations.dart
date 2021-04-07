import 'package:automobile/screens/salemaps.dart';
import 'package:flutter/material.dart';

class locations extends StatefulWidget {
  @override
  _locationsState createState() => _locationsState();
}

class _locationsState extends State<locations> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Container(
              child: Column(
                children: [
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  onPressed: null)
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.red,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.red),
                  color: Colors.red),
              tabs: <Widget>[
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.red,
                        )),
                    child: Center(
                      child: Text(
                        "Service Center",
                        // style: TextStyle(fontSize: 13.0),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.red,
                        )),
                    child: Center(
                      child: Text("Sales"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.red,
                        )),
                    child: Center(
                      child: Text("Parts Outlet"),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[SaleMaps(), SaleMaps(), SaleMaps()],
          ),
        ));
  }
}
