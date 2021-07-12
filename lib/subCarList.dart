
import 'package:flutter/material.dart';
import 'subcardesc.dart';

class subCarList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return subCarListState();
  }
}
class subCarListState extends State<subCarList>{

  var cartitle =[
    "TATA Altroz",
    "Honda Amaze",
    "Suzuki Ciaz",
    "Toyota innova",
    "Mahindra marazzo",
    "Mahindra Scorpio",
    "Suzuki Swift",
    "Mahindra XUV 500",
  ];

  var imagelist =[
    "images/atlroz.png",
    "images/amaze.png",
    "images/ciaz.png",
    "images/innova.png",
    "images/marazzo.png",
    "images/scorpio.png",
    "images/swift.png",
    "images/xuv500.png",
  ];

   var pricelist=[
    "₹16099",
    "₹17099",
    "₹19000",
    "₹19199",
    "₹19199",
    "₹20000",
    "₹15155",
    "₹24000",
  ];

   var ratings =[
     "Ratings:4.5/5",
     "Ratings:4.0/5",
     "Ratings:3.4/5",
     "Ratings:4.5/5",
     "Ratings:3.0/5",
     "Ratings:4.0/5",
     "Ratings:3.0/5",
     "Ratings:4.9/5",


   ];


  @override
  Widget build(BuildContext context) {

   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyan[400],
       title: Text('Available Cars',style: TextStyle(color:Colors.black),),
       //centerTitle: true,
       elevation: 0,
     ),
     body: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

       itemCount: this.imagelist.length,
       itemBuilder: (context,int index){
         return GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => subcardesc(context,imagelist[index],cartitle[index],pricelist[index]) ),);
              },
            child:Card(
              child:Column(
                children: <Widget>[
                  Container(
                      width:150,
                      height:100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(this.imagelist[index]),
                        fit: BoxFit.scaleDown,
                      )),
                  ),
                  Container(
                    width:120,
                    child:
                    Align(
                      alignment: Alignment.center,
                      child:
                  Text(this.cartitle[index],
                      style:TextStyle(
                        fontSize: 14,
                          fontWeight: FontWeight.w700)
                  ))),
                  Container(
                      height:20,
                      child:Text(
                          "Petrol/Diesel",
                          style:TextStyle(fontSize: 14,color:Colors.grey))),
                  Text(this.pricelist[index],
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400),),
                Padding(padding:EdgeInsets.only(top:20,left:110),
                    child:
                  Text(this.ratings[index],
                    style: TextStyle(
                        fontSize: 10,
                        color:Colors.green,
                    fontWeight: FontWeight.w600),))
                ])
            )
         );
       }
     ),

   );
  }
}