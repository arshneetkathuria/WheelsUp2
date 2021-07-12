
import 'package:flutter/material.dart';
//import 'carlist.dart';
import 'addressDetails.dart';

class subcardesc extends StatelessWidget {
  final String imagelist;
  final String cartitle;
  var  pricelist;


  subcardesc(context, this.imagelist, this.cartitle, this.pricelist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BOOKING DETAILS',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar:  Container(
          height: 55,
          width:380,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient:
            LinearGradient(begin: AlignmentDirectional.topCenter, colors: [
              Colors.cyan[700],
              Colors.cyan[600],
              Colors.cyan[400],
              Colors.cyan[200]
            ]),
          ),
          child: RaisedButton(
              child: Text("Proceed →",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              color:Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addressDetails() ),);
              }
          )),
      body: SingleChildScrollView(
        child: Container(
            width: 500,
            height: 1000,
            color: Colors.grey.withOpacity(0.2),
            child: Column(children: <Widget>[
              Container(
                  width: 500,
                  height: 320,
                  color: Colors.white,
                  child: Column(children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text(this.cartitle,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900))),
                    Container(height: 30),
                    Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(this.imagelist),
                            fit: BoxFit.cover,
                          )),
                    ),
                    /* Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Container(
                              height:20,
                              child:Text(
                                  "⛽Petrol/Diesel",
                                  style:TextStyle(fontSize: 12,color:Colors.grey,fontWeight: FontWeight.w600))),
                        ]),),*/
                  ])),
              Container(height: 20,),
              /*Text(this.pricelist,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400),),*/

              Container(
                  height: 300,
                  width: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(children: [
                        Text(
                          'Base Price',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Container(width: 180),
                        Text(
                          this.pricelist,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Row(children: [
                        Text(
                          'Delivery & pickup Charges',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Container(width: 70),
                        Text(
                          "₹500",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Row(children: [
                        Text(
                          'Refundable security deposit',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Container(width: 60),
                        Text(
                          "₹10000",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                          width: 330,
                          child: Divider(color: Colors.grey, thickness: 1.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Row(children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        Container(width: 200),
                        Text(
                          cal(),
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),

                      ]),
                    )
                  ]))
            ])),
      ),
    );
  }
  String cal(){
   var delivery = 500;
  var deposit = 10000;
  var total;
  total = delivery+deposit+int.parse(pricelist.replaceAll('₹',''));
   String s = '₹$total';
  return s;
}
}
