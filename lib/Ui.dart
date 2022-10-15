import 'package:flutter/material.dart';
import 'dart:math' as math;

class Ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            centerTitle: true,
            title: Text("Booking.com"),
            backgroundColor: Color.fromARGB(255, 4, 37, 156),
          )),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "What will be your next destination?",
                prefixIcon: Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amberAccent, width: 4.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          //PageView(children: [Orde, Filter, map]),
          /*  BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Transform.rotate(
                      angle: 90 * math.pi / 180,
                      child: Icon(Icons.compare_arrows)),
                  label: "order"),
              // BottomNavigationBarItem(icon: Icon(Icons.tune), label: "filter"),
              BottomNavigationBarItem(icon: Icon(Icons.tune), label: "filter"),
              BottomNavigationBarItem(icon: Icon(Icons.map), label: "map"),
            ],
          ), */

          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: TextButton.icon(
                      onPressed: () {},
                      icon: Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: Icon(Icons.compare_arrows)),
                      label: Text("filter",
                          style: TextStyle(
                            color: Colors.black,
                          ))),
                  label: ""),
              BottomNavigationBarItem(
                  icon: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.tune),
                      label: Text(
                        "filter",
                        style: TextStyle(color: Colors.black),
                      )),
                  label: ""),
              BottomNavigationBarItem(
                  icon: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.map),
                    label: Text(
                      "map",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  label: ""),
            ],
          ),
        ]),
      ),
    );
  }
}
