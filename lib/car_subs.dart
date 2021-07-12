import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:wheelsup/subCarList.dart';
class subs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
       Container(
         width: 500,
         height: 1000,
         child: CustomScrollView(
           slivers: <Widget>[
           SliverAppBar(
           centerTitle: true,
           title: Text(
             "Subscriptions",
             style: TextStyle(color: Colors.cyan),
           ),
           elevation: 0,
           backgroundColor: Colors.grey,
           pinned: true,
           expandedHeight: 200,
           flexibleSpace: FlexibleSpaceBar(
               background: Image.asset('images/cover.jpeg', fit: BoxFit.cover)),
         ),
             SliverFillRemaining(
               child: ListView(
                   children: <Widget>[
                        items(),


                   ]),
             ),
       ]
   )
    )
   );
  }
}
class items extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Material(
        child: SingleChildScrollView(
          child: Container(
         width:double.infinity,
         height:1300,
         color: Colors.grey[200],
         child:Column(
           children:<Widget>[
         Padding(padding: EdgeInsets.only(top:20),
            child: Text(
                "Rent Cars for",
                style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
                    ),
             Padding(padding: EdgeInsets.only(top:5),
                 child: Container(
                     width: 300,
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(50)) ,
                       gradient: LinearGradient(
                           begin: AlignmentDirectional.topCenter,
                           colors: [
                             Colors.cyan[800],
                             Colors.cyan[700],
                             Colors.cyan[400],
                             Colors.cyan[300]
                           ]
                       ),),
                     child:
                     Row(children:<Widget>[
                       Padding(padding:EdgeInsets.only(left:10),
                         child:
                         Icon(Icons.car_rental,
                             color:Colors.white),),
                       Padding(padding:EdgeInsets.only(left:20),
                         child:
                         Text(
                           "for month & months",
                           style: TextStyle(
                             color: Colors.white,
                               fontSize: 18,
                               fontWeight: FontWeight.w900
                           ),
                         ),),
                       Padding(padding:EdgeInsets.only(left:30),
                         child:IconButton(
                           icon:Icon(Icons.arrow_forward_sharp,
                               color:Colors.white),
                          onPressed: () => Navigator.push(context,
                             MaterialPageRoute(builder: (context) => subCarList() ),),
                         ),
                       ),
                     ]
                     )
                 ),
             ),

             Padding(
                 padding: EdgeInsets.only(top: 20, left: 20),
                 child: Align(
                     alignment: Alignment.topLeft,
                     child: Text(
                       "Subscription benefits",
                       style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.w900,
                         color: Colors.grey.withOpacity(1.0),
                       ),
                     ))),

              Row(children: <Widget>[
        Padding(padding: EdgeInsets.only(left:10),
        child:
                Icon(Icons.exposure_zero, size: 50,color:Colors.teal[500])),
                Text(" Now Down \n Payment",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                Padding(padding: EdgeInsets.only(left:100),
                  child:
                Icon(Icons.account_balance, size: 30,color:Colors.teal[500]),),
                Text("  Cheaper than \n  EMI",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
              ]),
             Container(height:20),
             Row(children: <Widget>[
               Padding(padding: EdgeInsets.only(left:10),
                   child:
                   Icon(Icons.car_repair, size: 50,color:Colors.teal[500])),
               Text(" Free service\n & \n Maintanence",
                   style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
               Padding(padding: EdgeInsets.only(left:90),
                 child:
                 Icon(Icons.more_time_rounded, size: 30,color:Colors.teal[500]),),
               Text(" Extend Or \n Return\n Anytime",
                   style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
             ]),
             safeCars(),
             work()//-----------------------------------------------------------------------------------------------------------------------------------------
            ])),
     ),
   );
  }
}
class safeCars extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(padding:EdgeInsets.only(top:20,left:20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Safe & Sanitised Cars",
                style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.withOpacity(1.0),),
              )
          )),
      //------------------C 2-------------------------------------------
      Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Container(
          width: 500.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            //------------------------c 2.1---------------------------
            Row(
              //----------------------------------------------
              children: <Widget>[
                Container(
                    width: 170,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.teal,
                    ),
                    child: Row(children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 7.0),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/sanitizer.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Internal & \nExternal",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            )),
                        Text(
                          "sanitisation",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ])
                    ])),
                //----------------------------------------------
                Container(
                  width: 10,
                ),
                //---------------------------------------------------
                Container(
                    width: 170,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.orange,
                    ),
                    child: Row(children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 7.0),
                          child: Container(
                            width: 60,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/contact_less.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Contact-less",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            )),
                        Text(
                          "doorstep \ndelivery",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ])
                    ])),
                //-------------------------------------------
                Container(
                  width: 10,
                ),
                //---------------------------------------------
                Container(
                    width: 170,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueAccent,
                    ),
                    child: Row(children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 7.0),
                          child: Container(
                            width: 60,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/safety_hygine.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Safety & \nHygiene",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            )),
                        Text(
                          "best practices",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ])
                    ])),
                //-------------------------------------------------
                Container(
                  width: 10,
                ),
                //---------------------------------------------------
                Container(
                    width: 170,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Row(children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 7.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                AssetImage('images/car_sanitization.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Re-\nsanitisation",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            )),
                        Text(
                          "at doorstep",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ])
                    ])),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

class work extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Container(
    child:Column(
      children:<Widget>[
        Padding(padding:EdgeInsets.only(top:20,left:20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "How it works",
                  style: TextStyle(
                    fontSize:24,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.withOpacity(1.0),),
                )
            )),
        Padding(padding:EdgeInsets.only(left:20),
        child:
        Row(children:<Widget>[
          Icon(Icons.directions_car_outlined,size:50,color:Colors.teal[400]),
          Container(width:20),
          Container(width:200,child:
          Column(children: <Widget>[
            Container(height:30),
            Align(
                alignment: Alignment.topLeft,
                child:
            Text('1',style:TextStyle(color:Colors.grey.withOpacity(1.0),fontSize: 25))),
              Align(
                  alignment: Alignment.topLeft,
                  child:
            Text('Select & Reserve',style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize: 20))),
            Text("Pick your car model & reserve online",style:TextStyle(fontSize: 17))
          ])
    )
        ])),
        Padding(padding:EdgeInsets.only(left:20),
            child:
            Row(children:<Widget>[
              Icon(Icons.auto_awesome,size:50,color:Colors.teal[400]),
              Container(width:20),
              Container(width:200,child:
              Column(children: <Widget>[
                Container(height:30),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('2',style:TextStyle(color:Colors.grey.withOpacity(1.0),fontSize: 25))),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('Preparing your Car',style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize: 20))),
                Text("After quality check and cleaning your car is ready to deliver",style:TextStyle(fontSize: 17))
              ])
              )
            ])),
        Padding(padding:EdgeInsets.only(left:20),
            child:
            Row(children:<Widget>[
              Icon(Icons.home_work_rounded,size:50,color:Colors.teal[400]),
              Container(width:20),
              Container(width:200,child:
              Column(children: <Widget>[
                Container(height:30),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('3',style:TextStyle(color:Colors.grey.withOpacity(1.0),fontSize: 25))),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('Home Delivery',style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize: 20))),
                Text("Get your car deliver at your doorstep withinh 14 days",style:TextStyle(fontSize: 17))
              ])
              )
            ])),
        Padding(padding:EdgeInsets.only(left:20),
            child:
            Row(children:<Widget>[
              Icon(Icons.airline_seat_recline_extra_rounded,size:50,color:Colors.teal[400]),
              Container(width:20),
              Container(width:200,child:
              Column(children: <Widget>[
                Container(height:30),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('4',style:TextStyle(color:Colors.grey.withOpacity(1.0),fontSize: 25))),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('Hassle free experience',style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize: 20))),
                Text("Ride hassle free, we will take care of routine check & insurance claim.",style:TextStyle(fontSize: 17))
              ])
              )
            ])),
        Padding(padding:EdgeInsets.only(left:20),
            child:
            Row(children:<Widget>[
              Icon(Icons.timelapse_outlined,size:50,color:Colors.teal[400]),
              Container(width:20),
              Container(width:200,child:
              Column(children: <Widget>[
                Container(height:30),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('5',style:TextStyle(color:Colors.grey.withOpacity(1.0),fontSize: 25))),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('Return or Extend anytime',style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize: 20))),
                Text("Continue using the car or return it anytime",style:TextStyle(fontSize: 17))
              ])
              )
            ])),


      ])
  );
  }
}