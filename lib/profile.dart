//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wheelsup/Pages/ManageProfile.dart';
import 'package:wheelsup/Pages/Faq.dart';
// import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[300],
     body:SingleChildScrollView(
       child: Column(
         children: [
           Container(
             padding: EdgeInsets.all(20),
             color:Colors.white,
             height:250,
             child:Center(
               child:Column(
                 children: [
                   CircleAvatar(
                     backgroundColor: Colors.cyan,
                     child:Text("A",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                     radius: 28,
                   ),
                   SizedBox(height:10),
                   Text("Arshneet",style:TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                   SizedBox(height:10),
                   Text("abc@gmail.com",style:TextStyle(fontSize: 15,fontFamily:'Raleway')),
                   SizedBox(height:10),
                   Text("+990078564"),
                   SizedBox(height:10),
                   Container(
                     padding: EdgeInsets.all(12),
                     width:200,
                     height:50,
                     child: Row(
                       children: [
                         Icon(Icons.account_balance_wallet_rounded,color: Colors.teal[800],size: 25,),
                         SizedBox(width:10),
                         Text("WheelsUp cash",style:TextStyle(fontWeight: FontWeight.bold)),
                         SizedBox(width:10),
                         Text("₹0",style:TextStyle(fontWeight:FontWeight.bold))
                       ],
                     ),
                     decoration: BoxDecoration(
                         color: Colors.teal[100],
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20),
                         bottomLeft: Radius.circular(20),
                         topRight:Radius.circular(20),
                         bottomRight: Radius.circular(20)
                       )
                       )
                     ),
                 ],
                   )

               )
             ),
           SizedBox(height:20),
           Container(
               height:65,
             color:Colors.white,
             padding:EdgeInsets.all(18),
             child:InkWell(
                 child:Row(
               children:[
                 Icon(Icons.person_outline_rounded),
                 SizedBox(width:20),
                 Text("Manage Profile"),
                 Expanded(
                     child:Align(
                   alignment: Alignment.centerRight,
                   child:Icon( Icons.chevron_right),
                 )
                 ),
               ]
             ),
               onTap: ()=>{
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>ManageProfile())),
               },
             )
           ),
           SizedBox(height:3),
           Container(
               height:65,
               color:Colors.white,
               padding:EdgeInsets.all(18),
               child:InkWell(
                 onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>Faq()))},
                   child:Row(
                       children:[
                         Icon(Icons.contact_support_outlined),
                         SizedBox(width:20),
                         Text("FAQs"),
                         Expanded(
                             child:Align(
                           alignment: Alignment.centerRight,
                           child:Icon( Icons.chevron_right),
                         )
                         )

                       ]
                   )
               )
           ),
           SizedBox(height:3),
           Container(
               height:65,
               color:Colors.white,
               padding:EdgeInsets.all(18),
               child:InkWell(
                   child:Row(
                       children:[
                         Icon(Icons.assignment),
                         SizedBox(width:20),
                         Text("Policy"),
                         Expanded(
                         child:Align(
                           alignment: Alignment.centerRight,
                           child:Icon( Icons.chevron_right),
                         )
                         )

                       ]
                   )
               )
           ),
           SizedBox(height:3),
           Container(
               height:65,
               color:Colors.white,
               padding:EdgeInsets.all(18),
               child:InkWell(
                 onTap: ()=>{
                   //_makingPhoneCall()
                 },
                   child:Row(
                       children:[
                         Icon(Icons.phone),
                         SizedBox(width:20),
                         Text("Call us"),
                         Expanded(
                         child:Align(
                           alignment: Alignment.centerRight,
                           child:Icon( Icons.chevron_right),
                         )
                         )
                       ]
                   )
               )
           ),
           SizedBox(height:3),
           Container(
             height:65,
               color:Colors.white,
               padding:EdgeInsets.all(18),
               child:InkWell(
                   child:Row(
                       children:[
                         Icon(Icons.exit_to_app),
                         SizedBox(width:20),
                         Text("Logout"),
                         Expanded(
                         child:Align(
                           alignment: Alignment.centerRight,
                           child:Icon( Icons.chevron_right),
                         )
                         )
                       ]
                   )
               )
           ),

         ],


         )
           )
       );

  }
}

//  _makingPhoneCall() async
// {
//   const url='tel:919464036165';
//   if(await canLaunch(url))
//   {
//     await launch(url);
//   }
//   else
//   {
//     throw 'Could not launch url';
//   }
// }