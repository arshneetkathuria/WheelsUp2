import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class signup extends StatelessWidget{
  String name, email, password, phone;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  Future<bool> signupUser(String name,String email,String password,String phone)
  async{
    FirebaseAuth _auth = FirebaseAuth.instance;
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return true;
    }
    catch(e){
      print("Err");
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text("Sign Up"),
        elevation: 0,
      ),
      body: Form(child:
      ListView(
        children: <Widget>[
          SizedBox(
              width:double.infinity,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                    child: Text(
                        "Create Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter your full name',
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.grey,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.green,),
                            )
                        ),
                        controller: _nameController,
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                            labelText: 'Email Id',
                            hintText: 'Enter Email Id or Mobile Number',
                            prefixIcon: Icon(Icons.mail_outline_rounded),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.grey,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.green,),

                            )
                        ),
                        controller: _emailController,
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Phone Number',
                            hintText: 'Enter Mobile Number',
                            prefixIcon: Icon(Icons.phone),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.send,color: Colors.blue,),
                              onPressed: () {  },
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.grey,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.green,),
                            )
                        ),
                        controller: _phoneController,
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        autofocus: true,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            prefixIcon: Icon(Icons.vpn_key_outlined),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.grey,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.green,),
                            )
                        ),
                        controller: _passwordController,
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                            labelText: 'OTP',
                            hintText: 'Enter otp',
                            prefixIcon: Icon(Icons.check_circle_outline),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.grey,),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.green,),
                            )
                        ),
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 20, top: 40),
                      child: Container(
                        width: 300,
                        height: 40,
                        child:
                        RaisedButton(child: Text(
                            'Finish',
                            style:TextStyle(
                              color: Colors.white,
                            )),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          color: Colors.cyan[600],
                          onPressed: ()  async{
                            final  name = _nameController.text.toString().trim();
                            var email = _emailController.text.toString().trim();
                            final password = _passwordController.text.toString().trim();
                            final phone = _phoneController.text.toString().trim();

                            bool result =await signupUser(name, email, password, phone);

                            if(result){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => login ()),);
                            }
                            // ignore: unnecessary_statements
                            else(){
                              print("nahi hua");
                            };
                          },
                        ),
                      )
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 20, top: 15),
                      child: Container(
                        width: 300,
                        height: 40,
                        child:
                        RaisedButton(child: Text(
                            'Already have a account? login',
                            style:TextStyle(
                              color: Colors.black,
                            )),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.cyan[600],width:3.0),
                          ),
                          color: Colors.white,
                          onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login()),
                          ); },),))
                ],
              )
          )
        ],
      )
      ),
    );
  }

}