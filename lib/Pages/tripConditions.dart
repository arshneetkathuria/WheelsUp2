import 'package:flutter/material.dart';

import '../Components/singleTile.dart';

// import 'package:wheelsup/Components/singleTile.dart';
class TripConditions extends StatefulWidget {
  _TripConditions createState()=>_TripConditions();
}
class _TripConditions extends State<TripConditions>
{
  var tripFaq=[
    {
      "title":"What documents do I need to take rhe delivery of my WheelsUp car?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"How do I check-in for my booking?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"What do I do if the vehicle breaks down or if I meet with an accident?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"How do I check-out from my booking?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"What are the requirements when I drive across the state border?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"What do I do if a border officer at the State RTO crossing is a causing a problem?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"What is the amount that I must pay at a State border crossing?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    },
    {
      "title":"What if I leave something in WheelsUp's car?",
      "content":"To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
          "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
          "considered as a valid document."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: tripFaq.length,
              itemBuilder: (BuildContext context, int index) {
                return SingleTile(
                    title: tripFaq[index]["title"],
                    content: tripFaq[index]["content"]);
              },
            ),);
  }
}