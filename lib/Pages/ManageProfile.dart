import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ManageProfile extends StatefulWidget {
  _ManageProfile createState() => _ManageProfile();
}

class _ManageProfile extends State<ManageProfile> {
  final _formKey = GlobalKey<FormState>();
  final nameController = new TextEditingController();
  final mailController = new TextEditingController();
  final mobileController = new TextEditingController();
  final LicenseController = new TextEditingController();
  final AadharController = new TextEditingController();
  final dateController = new TextEditingController();
  bool showName = false;
  bool showMail = false;
  bool showMobile = false;
  bool showDate = false;
  bool showLicense = false;
  bool showAadhar = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 60,
        leading: Icon(Icons.person_rounded, color: Colors.black, size: 30),

        backgroundColor: Colors.white,
        title: Text("Manage Profile",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 25,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 100,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19,
                            ),
                          )),
                      SizedBox(height: 10),
                      showName
                          ? Row(children: [
                              Expanded(
                                child: Text(
                                    nameController.text.length == 0
                                        ? "Enter your name"
                                        : nameController.text,
                                    style: TextStyle(
                                        color: nameController.text.length == 0
                                            ? Colors.grey[700]
                                            : Colors.grey[800],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn1",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showName = !showName;
                                        print(showName);
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  ))
                            ])
                          : Expanded(
                              child: new TextFormField(
                              validator: (value) {
                                if (value.length == 0 || value.isEmpty) {
                                  print("length==${value.length}");
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Enter name"),
                                  ));
                                }
                                return null;
                              },
                              controller: nameController,
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RaisedButton(
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text("Save"),
                                        onPressed: () => {
                                          setState(() {
                                            showName = !showName;
                                            print("textField==$showName");
                                          })
                                        },
                                      )),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25))),
                            ))
                    ]),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19,
                            ),
                          )),
                      SizedBox(height: 10),
                      showMail
                          ? Row(children: [
                              Expanded(
                                child: Text(mailController.text,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn2",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showMail = !showMail;
                                        print(showName);
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  ))
                            ])
                          : Expanded(
                              child: new TextFormField(
                              validator: (value) {

                                EmailValidator.validate(value)
                                    ? null
                                    : ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                        content:
                                            Text("Enter valid email address"),
                                      ));

                                return null;
                              },
                              controller: mailController,
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RaisedButton(
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text("Save"),
                                        onPressed: () => {
                                          setState(() {
                                            showMail = !showMail;
                                            print("textField==$showName");
                                          })
                                        },
                                      )),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25))),
                            ))
                    ]),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Mobile",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19,
                            ),
                          )),
                      SizedBox(height: 10),
                      showMobile
                          ? Row(children: [
                              Expanded(
                                child: Text("+91" + mobileController.text,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn3",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showMobile = !showMobile;
                                        print(showName);
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  ))
                            ])
                          : Expanded(
                              child: new TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Enter 10-digit mobile no."),
                                  ));
                                }
                                return null;
                              },
                              controller: mobileController,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  hintText: "+91",
                                  suffixIcon: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RaisedButton(
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text("Save"),
                                        onPressed: () => {
                                          setState(() {
                                            showMobile = !showMobile;
                                            print("textField==$showName");
                                          })
                                        },
                                      )),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25))),
                            ))
                    ]),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Date of birth",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19,
                            ),
                          )),
                      SizedBox(height: 10),
                      showDate
                          ? Row(children: [
                              Expanded(
                                child: Text(dateController.text,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn3",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showDate = !showDate;
                                        print(showName);
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  ))
                            ])
                          : Expanded(
                              child: new TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Enter your date of birth"),
                                  ));
                                }
                                return null;
                              },
                              controller: dateController,
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RaisedButton(
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text("Save"),
                                        onPressed: () => {
                                          setState(() {
                                            showDate = !showDate;
                                            print("textField==$showName");
                                          })
                                        },
                                      )),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25))),
                            ))
                    ]),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Driving License Number",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19,
                            ),
                          )),
                      SizedBox(height: 10),
                      showLicense
                          ? Row(children: [
                              Expanded(
                                child: Text(LicenseController.text,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn4",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showLicense = !showLicense;
                                        print(showName);
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  ))
                            ])
                          : Expanded(
                              child: new TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Enter license number"),
                                  ));
                                }
                                return null;
                              },
                              controller: LicenseController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RaisedButton(
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text("Save"),
                                        onPressed: () => {
                                          setState(() {
                                            showLicense = !showLicense;
                                            print("textField==$showName");
                                          })
                                        },
                                      )),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25))),
                            ))
                    ]),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Aadhar number",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19,
                            ),
                          )),
                      SizedBox(height: 10),
                      showAadhar
                          ? Row(children: [
                              Expanded(
                                child: Text(AadharController.text,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: FloatingActionButton(
                                    heroTag: "btn5",
                                    backgroundColor: Colors.blueGrey[50],
                                    onPressed: () => {
                                      setState(() {
                                        showAadhar = !showAadhar;
                                        print(showName);
                                      })
                                    },
                                    child: Icon(
                                      Icons.border_color,
                                      color: Colors.grey[800],
                                      size: 25,
                                    ),
                                  ))
                            ])
                          : Expanded(
                              child: new TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Enter 12-digit Aadhar no."),
                                  ));
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              controller: AadharController,
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: RaisedButton(
                                        color: Colors.cyan,
                                        textColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text("Save"),
                                        onPressed: () => {
                                          setState(() {
                                            showAadhar = !showAadhar;
                                            print("textField==$showName");
                                          })
                                        },
                                      )),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25))),
                            ))
                    ]),
                  ),
                  SizedBox(height: 20),
                  Center(
                      child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {

                        if (_formKey.currentState.validate()) {
                          print("done");
                          print("name=${nameController.text.length}");
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Enter the missing fields")));
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 18, letterSpacing: 2),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Colors.cyan,
                          onPrimary: Colors.white),
                    ),
                  ))
                ]),
          ),
        ),
      ),
    );
  }
}
