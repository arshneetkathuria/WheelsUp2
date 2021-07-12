import 'package:flutter/material.dart';
import 'package:wheelsup/Pages/duration.dart';
import 'car_subs.dart';
import 'carlist.dart';

// import 'citylist.dart';
class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: double.infinity,
          // height: 1000,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                colors: <Color>[
                  Colors.cyan[800],
                  Colors.cyan[700],
                  Colors.tealAccent[400],
                  Colors.tealAccent[200],
                  Colors.cyan,
                ]),
          ),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 10, top: 50, bottom: 5),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 130,
                          height: 45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/logo2.png'),
                              fit: BoxFit.fill,
                            ),
                          )))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/rentals.png'),
                          fit: BoxFit.fill,
                        ),
                      ))),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Let's find a car for you",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ))),
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                      width: 310,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: InkWell(
                        child: Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.search, color: Colors.cyan),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Search cars",
                              style: TextStyle(
                                  //color: Colors.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Icon(Icons.arrow_forward_sharp,
                                color: Colors.cyan),
                            // onPressed: () => Navigator.push(context,
                            //     // MaterialPageRoute(builder: (context) => CarList() ),
                            //   MaterialPageRoute(builder: (context)=>Duration())),
                          ),
                        ]),
                        onTap: () => {
                          Navigator.push(
                              context,
                              // MaterialPageRoute(builder: (context) => CarList() ),
                              MaterialPageRoute(
                                  builder: (context) => Duration())),
                        },
                      ))),
              Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: SingleChildScrollView(
                      child: Container(
                    width: double.infinity,
                    height: 1400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(40)),
                      color: Colors.grey[200],
                    ),
                    child: Column(children: <Widget>[
                      //----------------------------------------------------------------------
                      carSubs(),
                      safeCars(),
                      desc(),
                      listCar(),
                      // --------------------------------------------------------------------
                    ]),
                  )))
            ]),
          )),
    );
  }
}

class carSubs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Car Subscription",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.withOpacity(1.0),
                  ),
                ))),
        Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        //----------------------------------------------
                        children: <Widget>[
                          Container(
                              width: 270,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => subs()));
                                },
                                child: Column(children: <Widget>[
                                  Row(children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child:
                                            Text("Need A car for\nfew months",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w900,
                                                ))),
                                    Container(width: 20),
                                    Container(
                                      width: 100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('images/need_car.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ]),
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 15),
                                        child: Text(
                                            "Min. 1 month, extend\nanytime",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.cyan))),
                                    Container(width: 20),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 30, left: 40),
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_forward_sharp,
                                            color: Colors.black),
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => subs()),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ]),
                              )),
                          Container(width: 15),
                          Container(
                              width: 270,
                              // height: 140,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => subs()));
                                },
                                child: Column(children: <Widget>[
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 15),
                                        child: Text(
                                            "Drive a car\nwith no loan\nliability",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                            ))),
                                    Container(width: 20),
                                    Container(
                                      width: 100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('images/no_loan.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ]),
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 15),
                                        child: Text(
                                            "Only ₹5000 \nrefundable deposit",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.cyan))),
                                    Container(width: 20),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 50),
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_forward_sharp,
                                            color: Colors.black),
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => subs()),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ]),
                              )),
                          Container(width: 15),
                          Container(
                              width: 270,
                              // height: 140,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => subs()));
                                },
                                child: Column(children: <Widget>[
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 15),
                                        child: Text(
                                            "Need A car\nurgently for\nessential travel",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                            ))),
                                    Container(width: 10),
                                    Container(
                                      width: 114,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('images/delivey.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ]),
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 20, left: 15),
                                        child: Text(
                                            "Doorstep delivery\nin 24 hrs.",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.cyan))),
                                    Container(width: 20),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 40),
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_forward_sharp,
                                            color: Colors.black),
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => subs()),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ]),
                              )),
                          Container(width: 15),
                          Container(
                              width: 250,
                              // height: 140,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => subs()));
                                },
                                child: Column(children: <Widget>[
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 15),
                                        child: Text("Sanitised &\nclean car",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                            ))),
                                    Container(width: 30),
                                    Container(
                                      width: 80,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'images/clean_car.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  ]),
                                  Row(children: <Widget>[
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 5, left: 14),
                                        child: Text(
                                            "Min. 1month extends anytime\n"
                                            "Only ₹5000 refundable deposit\n"
                                            "Doorstep delivery ",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.cyan,
                                            ))),
                                    SizedBox(width: 5),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 30,
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_forward_sharp,
                                            color: Colors.black),
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => subs()),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ]),
                              ))
                        ]))))
      ])),
    );
  }
}

class safeCars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Safe & Sanitised Cars",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.withOpacity(1.0),
                ),
              ))),
      //------------------C 2-------------------------------------------
      Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Container(
          width: double.infinity,
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

class desc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Advantages",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.withOpacity(1.0),
                ),
              ))),
      Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                Container(height: 5),
                Icon(
                  Icons.local_car_wash,
                  size: 40,
                  color: Colors.cyan[800],
                ),
                Text('Maintained Cars',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.black)),
                Container(
                  height: 10,
                ),
                Text(
                  'Regular service & maintainance\n         Inspect before eah trip',
                  style: TextStyle(fontSize: 15),
                ),
              ]))),
      Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                Container(height: 5),
                Icon(
                  Icons.support_agent,
                  size: 40,
                  color: Colors.cyan[800],
                ),
                Text('24*7 Support',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.black)),
                Container(
                  height: 10,
                ),
                Text(
                  '   Round the clock Road side\nassistance and phone support',
                  style: TextStyle(fontSize: 15),
                ),
              ]))),
      Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                Container(height: 5),
                Icon(
                  Icons.attach_money_sharp,
                  size: 40,
                  color: Colors.cyan[800],
                ),
                Text('Flexible Pricing',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.black)),
                Container(
                  height: 10,
                ),
                Text(
                  '             Choose Plans\n "Unlimited kms" or "with fuel"',
                  style: TextStyle(fontSize: 15),
                ),
              ]))),
      Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
              ),
              child: Column(children: <Widget>[
                Container(height: 5),
                Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.cyan[800],
                ),
                Text('Home delivery',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Colors.black)),
                Container(
                  height: 10,
                ),
                Text(
                  'On time doorstep service\n at you preferred location',
                  style: TextStyle(fontSize: 15),
                ),
              ]))),
    ]);
  }
}

class listCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage('images/listingimage.png'),
              fit: BoxFit.cover,
            )),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Text("The Car That's Pays \n         for Itself",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Share your Car Earn Some Extra cash",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            'List in just 10 minutes',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                child: Text("Register Your Car",
                    style: TextStyle(fontSize: 18, color: Colors.black)),
                onPressed: () {},
              ),
            ),
          )
        ]));
  }
}
