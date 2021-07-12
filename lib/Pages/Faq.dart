// import 'da';

import 'package:flutter/material.dart';
import 'package:wheelsup/Pages/about.dart';
import 'package:wheelsup/Pages/booking.dart';
import 'package:wheelsup/Pages/payment.dart';
import 'package:wheelsup/Pages/tripConditions.dart';


class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
            length: 4,
            child: Scaffold(
        //backgroundColor: Colors.grey.withOpacity(0.2),
        appBar: AppBar(
            elevation: 0,
            // toolbarHeight: 20,
            title: Text("FAQs",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            // backgroundColor: Colors.grey.withOpacity(0.1),
            leading: 
              Icon(Icons.question_answer_rounded, size: 30, color: Colors.black),
              
            bottom: TabBar(
            tabs: [
              Tab(text:"About us",),
              Tab(text:"Bookings",),
              Tab(text:"Payment & refund",),
              Tab(text:"About Trip",),
            ],
        ),
        ),
        body:TabBarView(
                children: [
                  About(),
                  Booking(),
                  Payment(),
                  TripConditions()

                ],
              ),
      ),
          
    );
  }
}
      // body: ListView(
      //   children: <Widget>[
      //     Container(height:10),
      //     Container(
      //       width: 100,
      //       height: 60,
            
      //       //width:300 ,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(20)),
      //         color: Colors.cyan[200],
      //       ),
      //       child: ListTile(
      //         leading:CircleAvatar(radius: 20,backgroundColor: Colors.white,child:Text('AW',style: TextStyle(fontWeight: FontWeight.w700,color:Colors.black))), 
      //         //Icon(Icons.help,color: Colors.cyan,size:40),
      //         title: Text("About WheelsUp",style: TextStyle(fontWeight: FontWeight.w700)),
      //         onTap: () => {
      //                       Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                               builder: (context) => About()))
      //                     }),
      //       ),
      //     Container(height:10),
      //     Container(
      //       width: 100,
      //       height: 60,            
      //       //width:300 ,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(20)),
      //         color: Colors.cyan[300],
      //       ),
      //       child: ListTile(
      //         leading:CircleAvatar(radius: 20,backgroundColor: Colors.white,child:Text('YB',style: TextStyle(fontWeight: FontWeight.w700,color:Colors.black))), 
      //         //Icon(Icons.help,color: Colors.cyan,size:40),
      //         title: Text("Your Booking",style: TextStyle(fontWeight: FontWeight.w700)),
      //         onTap: () => {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => Booking()))
      //         },
      //       ),
      //     ),
      //     Container(height:10),
      //     Container(
      //       width: 100,
      //       height: 60,            
      //       //width:300 ,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(20)),
      //         color: Colors.cyan[400],
      //       ),
      //       child: ListTile(
      //         leading:CircleAvatar(radius: 20,backgroundColor: Colors.white,child:Text('PR',style: TextStyle(fontWeight: FontWeight.w700,color:Colors.black))),             
      //         //Icon(Icons.help,color: Colors.cyan,size:40),
      //         title: Text("Payment & Refund",style: TextStyle(fontWeight: FontWeight.w700)),
      //         onTap: () => {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => Payment()))
      //         },
      //       ),
      //     ),
      //     Container(height:10),
      //     Container(
      //       width: 100,
      //       height: 60,
            
      //       //width:300 ,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.all(Radius.circular(20)),
      //         color: Colors.cyan[500],
      //       ),
      //       child: ListTile(
      //         leading:CircleAvatar(radius: 20,backgroundColor: Colors.white,child:Text('YT',style: TextStyle(fontWeight: FontWeight.w700,color:Colors.black))), 
      //         //Icon(Icons.help,color: Colors.cyan,size:40),
      //         title: Text("Your Trip",style: TextStyle(fontWeight: FontWeight.w700)),
      //         onTap: () => {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => TripConditions()))
      //         },
      //       ),
      //     ),
      //   ],
      // ),

//Padding(
//   padding: EdgeInsets.only(left: 30, right: 30, top: 20),
//   child: SizedBox(
//     height: 255,
//     child: Card(
//       elevation: 50,
//       child: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: 5, left: 5, right: 5),
//             child: Card(
//                 elevation: 20,
//                 child: Container(
//                   decoration:BoxDecoration
//                   child: ListTile(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         side: BorderSide(color: Colors.black),
//                       ),
//                       title: Text("About WheelsUp",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.w800)),
//                       tileColor: Colors.cyan,
//                       onTap: () => {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => About()))
//                           }),
//                 )),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 5, left: 5, right: 5),
//             child: ListTile(
//               title: Text("Your Booking",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 17, fontWeight: FontWeight.w800)),
//               tileColor: Colors.cyan[200],
//               onTap: () => {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Booking()))
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 5, left: 5, right: 5),
//             child: ListTile(
//               title: Text("Payments & Refunds",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 17, fontWeight: FontWeight.w800)),
//               tileColor: Colors.cyan,
//               onTap: () => {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Payment()))
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 5, left: 5, right: 5),
//             child: ListTile(
//               title: Text("Your Trip",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 17, fontWeight: FontWeight.w800)),
//               tileColor: Colors.cyan[200],
//               onTap: () => {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => TripConditions()))
//               },
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
