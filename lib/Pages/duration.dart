// import 'package:date_range_picker/date_range_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
// import '../utils.dart';


class Duration extends StatefulWidget {
  _Duration createState() => _Duration();
}

class _Duration extends State<Duration> {
  CalendarFormat _calendarFormat=CalendarFormat.month;
  DateTime _focusedDay =DateTime.now();
  DateTime startDate;
  DateTime _selectedDate=DateTime.now();
  @override
  void initState() {
    super.initState();
    // _focusedDay= ;
    startDate=DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        title: Text("Search",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        leading: InkWell(
          child: Icon(Icons.chevron_left, size: 30, color: Colors.black),
          onTap: () => {Navigator.pop(context)},
        ),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(bottom: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60)),
          color: Colors.blueGrey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize:MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // padding: EdgeInsets.all(30),
              height: 190,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.only(left: 20, right: 20),
                color: Colors.blueGrey[50],
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 5),
                      child: Row(children: [
                        Text("Start Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(width: 120),
                        Text("End Date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 4, top: 4),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () =>
                            {
                            TableCalendar(
                            firstDay: DateTime(2019,2,21),
                            lastDay: DateTime(2021,9,21),
                            focusedDay: _focusedDay,
                            calendarFormat: _calendarFormat,
                            onDaySelected: (DateTime selectDay,DateTime focusedDay)
                            {
                            setState(() {
                            _selectedDate=selectDay;
                            _focusedDay=focusedDay;
                            });

                            },
                            )
                            },
                            child: Row(
                              children: [
                                Text("23",style:TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                                Text("April", style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          // DateFormat.MMM()
                          //     .format(startDate)
                          //     .toString()
                                Text(" 10:00AM",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey[700])),
                              ],
                            ),
                          ),
                          SizedBox(width: 80),
                          InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Text("29Apr",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text(" 10:00PM",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey[700]))
                                ],
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 5),
                      child: Row(
                        children: [
                          Text("Monday",
                              style: TextStyle(
                                  fontSize: 19, color: Colors.grey[700])),
                          SizedBox(width: 150),
                          Text("Monday",
                              style: TextStyle(
                                  fontSize: 19, color: Colors.grey[700])),
                        ],
                      ),
                    ),
                    SizedBox(height: 42),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 330,
                        height: 49,
                        child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Duration:",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ))),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.all(20),
                child: GestureDetector(
                    onTap: () => {},
                    child: Container(
                        padding: EdgeInsets.all(8),
                        width: 400,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.cyan[900],
                                Colors.cyan[800],
                                Colors.cyan[700],
                                Colors.cyan[600],
                                Colors.cyan,
                                Colors.tealAccent[100]
                                // Colors.cyan[400],
                                // Colors.cyan[300],
                                // Colors.cyan[200],
                                // Colors.cyan
                              ]),
                        ),
                        child: Text(
                          "Search",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ))))
          ],
        ),
      ),
      // ),
    );
  }

  // _pickDate()  {
  //    TableCalendar(
  //   firstDay: DateTime(2019,2,21),
  //     lastDay: DateTime(2021,9,21),
  //     focusedDay: _focusedDay,
  //     calendarFormat: _calendarFormat,
  //      onDaySelected: (DateTime selectDay,DateTime focusedDay)
  //      {
  //       setState(() {
  //         _selectedDate=selectDay;
  //         _focusedDay=focusedDay;
  //       });
  //
  //      },
  //   );
  //
  // }
}

