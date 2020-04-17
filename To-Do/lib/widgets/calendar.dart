import 'package:flutter/material.dart';

class CalendarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      topBar(),
      calendar(),
      pullButton(),
    ]);
  }

  Widget topBar() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Left
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "November",
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                "Today",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )
            ]),

            // Right
            Row(
              children: <Widget>[
                Container(
                  height: 40.0,
                  child: FloatingActionButton(
                    elevation: 2.0,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25.0,
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: FloatingActionButton(
                    elevation: 2.0,
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.menu,
                      color: Colors.grey,
                      size: 25.0,
                    ),
                  ),
                )
              ],
            )
          ]),
    );
  }

  Widget calendar() {
    var date = DateTime.now();
    int day = date.day;

    var weekDays = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    List<Widget> cards = List();

    for (int i = 0; i < 7; i++) {
      cards.add(dayCard((day++).toString(), weekDays[i]));
      day = day > 31 ? 1 : day;
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: cards);
  }

  Widget dayCard(day, date) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 60.0,
      child: Column(
        children: <Widget>[
          Text(
            date,
            style: TextStyle(fontSize: 15.0, color: Colors.grey),
          ),
          Text(
            day,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget pullButton() {
    return Container(
      child: Stack(children: <Widget>[
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.grey,
        ),
        Positioned(
          top: 5.0,
          child: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
        )
      ]),
    );
  }
}
