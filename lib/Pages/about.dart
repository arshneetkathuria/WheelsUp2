import 'package:flutter/material.dart';

// import 'package:profile/Pages/expandableContainer.dart';
import '../Components/singleTile.dart';
import '../Components/singleTile.dart';

class About extends StatefulWidget {
  _About createState() => _About();
}

class _About extends State<About> {
  var aboutFaq = [
    {
      "title": "What is WheelsUp",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    },
    {
      "title": "Am I eligible to use WheelsUp services?",
      "content":
          "To avail WheelsUp services,you must be at least 21 years old, and your driving license for Light Motor Vehicles must be at least 1 year old "
              "(at the time of starting the trip).Driving License printed on A4 sheet of paper (original or otherwise)will not be "
              "considered as a valid document. "
    },
    {
      "title": "Is there a kilometres limit to how much I can drive?",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    },
    {
      "title": "Are there any restrictions on where I can travel?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice "
    },
    {
      "title": "Do I have to bring back the car to the same location?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice "
    },
    {
      "title": "Can I book a one way trip?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice"
    },
    {
      "title": "Can I book for any duration of time?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice"
    },
    {
      "title":
          "In the event of accident or damage to the vehicle,what is my maximum liability?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice"
    },
    {
      "title": "Is there any speeding limit?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice"
    },
    {
      "title": "Is WheelsUP 24/7?",
      "content": "All of our cars are quipped with all India Tourist Permit,so you are free to drive anywhere in the country"
          ".All India Tourist Permit means that the car is legally permitted to ply in any state of the country,after paying the inter state taxes"
          "at the state borders.The toll charges incurred during your trip will be billed to you in your invoice"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: aboutFaq.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleTile(
                title: aboutFaq[index]["title"],
                content: aboutFaq[index]["content"]);
          },
        ),
      );
  }
}
