import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheelsup/Components/singleTile.dart';
class Payment extends StatefulWidget {
  _Payment createState() => _Payment();
}

class _Payment extends State<Payment> {
  var paymentFaq = [
    {
      "title": "What modes of payments are accepted?",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    },
    {
      "title":
          "Do I get any reimbursement for the fuel I fill in my WheelsUp car?",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    },
    {
      "title": "Who pays for parking and tolls/inter-state entry taxes?",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    },
    {
      "title":
          "Do I need to pay the fines incurred during my booking,due to parking/traffic violations?",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    },
    {
      "title": "How much time does it take to get my refund back?",
      "content": "WheelsUp is a self drive car rental service that provides you with all the privacy,fun and convenience of your own car,"
          "without the hassles of owning and maintaining one.It is the peer-to-peer car sharing marketplace where you can book any car you want,wherever you want"
          "from a vibrant community of trusted hosts across Delhi.Guests choose from totally unique selection of nearby cars,while hosts earn extra cash to offset the cost of ownership. "
    }
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: paymentFaq.length,
              itemBuilder: (BuildContext context, int index) {
                return SingleTile(
                    title: paymentFaq[index]["title"],
                    content: paymentFaq[index]["content"]);
              },)
          
    );
  }
}


