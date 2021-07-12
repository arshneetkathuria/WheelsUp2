
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:animated_check/animated_check.dart';

class addressDetails extends StatefulWidget {
  const addressDetails({Key key}) : super(key: key);

  @override
  _addressDetailsState createState() => _addressDetailsState();
}

class _addressDetailsState extends State<addressDetails> with SingleTickerProviderStateMixin{

  String name;
  int phone;
 int pincode;
  String address1;
  String address2;
  String district;
  String landmark;
  final _nameController = TextEditingController();
  final _phone = TextEditingController();
  final _pincode = TextEditingController();
  final _address1= TextEditingController();
  final _address2= TextEditingController();
  final _district = TextEditingController();
  final _landmark = TextEditingController();
  final formKey=GlobalKey<FormState>();
  AnimationController _animationController;
  Animation<double> _animation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Address Details',style:TextStyle(color:Colors.black)),),
        bottomNavigationBar: Container(
            height: 55,
            decoration: BoxDecoration(
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
                  onPressed: (){
                    if(formKey.currentState.validate())
                      {
                      showAlert(context);
                      }
                  },
                )),
      body:SingleChildScrollView(
        child: Container(
          width:500,
          height: 700,
          child:Form(
            key:formKey,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 40),
                    child: TextFormField(
                      controller: _nameController,
                      autofocus: true,
                      validator: (value)
                      {
                        if(value==null || value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;

                      },
                      decoration: InputDecoration(
                          labelText: 'Full name',
                          hintText: 'Enter your full name',
                          //prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )),

                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value==null || value.isEmpty ) {
                          return "Please enter your Phone number";
                        }
                        if(value.length>10 || value.length<10)
                          {
                            return "Please enter 10 digit phone no.";
                          }
                        return null;

                      },
                      controller:_phone ,
                      keyboardType: TextInputType.phone,
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Mobile',
                          hintText: 'Enter your Mobile',
                          //prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value==null || value.isEmpty) {
                          return "Please enter pincode";
                        }
                        if(value.length>6 || value.length<6)
                          {
                            return "Please enter correct pin code";
                          }
                        return null;

                      },
                      controller: _pincode,
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Pin Code',
                          hintText: 'Pin Code',
                          //prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value==null || value.isEmpty) {
                          return "Please enter your complete address";
                        }
                        return null;

                      },
                      controller: _address1,
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Flat no, House no, Building name',
                          //hintText: '',
                          //prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value==null || value.isEmpty) {
                          return "Please enter your complete address";
                        }
                        return null;

                      },
                      controller: _address2,
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Area,Colony,Street,sector',
                          //hintText: '',
                          //prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value==null || value.isEmpty) {
                          return "Please enter your district";
                        }
                        return null;

                      },
                      controller: _district,
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'District',
                          hintText: 'e.g. South-west district',
                         // prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value==null || value.isEmpty) {
                          return "Please enter your landmark";
                        }
                        return null;

                      },
                      controller: _landmark,
                      autofocus: true,
                      decoration: InputDecoration(
                          labelText: 'Landmark',
                          hintText: 'e.g. near Apollo Hospital',
                          //prefixIcon: Icon(Icons.account_circle_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.green,),
                          )
                      ),
                      //controller: _nameController,
                    )),

              ]),
          )
        ),
      )
    );
  }


  Widget showAlert(BuildContext context)
  {

    Alert(
      context: context,
      type: AlertType.success,
      title: "Order Confirmed",
      image:Image.network("https://tenor.com/view/checkmark-transparent-gif-18188570"),
      desc: "Click OK to proceed with further instructions.",
      buttons: [

        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Colors.cyan[800],
            Colors.cyan[700],

          ]),
        )
      ],
    ).show();
  }
}