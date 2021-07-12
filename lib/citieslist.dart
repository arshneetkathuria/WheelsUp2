import 'package:flutter/material.dart';

class city extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cityState();
  }
}

class cityState extends State<city> {
  List<String> name = [
    'Andhra Pradesh (AP)',
    'Arunachal Pradesh (AR)',
    'Assam (AS)',
    'Bihar (BR)',
    'Chhattisgarh (CG)',
    'Goa (GA)',
    'Gujarat (GJ)',
    'Haryana (HR)',
    'Himachal Pradesh (HP)',
    'Jammu and Kashmir (JK)',
    'Jharkhand (JH)',
    'Karnataka (KA)',
    'Kerala (KL)',
    'Madhya Pradesh (MP)',
    'Maharashtra (MH)',
    'Manipur (MN)',
    'Meghalaya (ML)',
    'Mizoram (MZ)',
    'Nagaland (NL)',
    'Odisha(OR)',
    'Punjab (PB)',
    'Rajasthan (RJ)',
    'Sikkim (SK)',
    'Tamil Nadu (TN)',
    'Telangana (TS)',
    'Tripura (TR)',
    'Uttar Pradesh (UP)',
    'Uttarakhand (UK)',
    'West Bengal (WB)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Text('Select city',
                style: TextStyle(
                  color: Colors.red.withOpacity(0.3),
                  fontWeight: FontWeight.w700,
                ))),
        body: Container(
            width: double.infinity,
            //height:1100,
            height: double.infinity,
            child: Column(children: <Widget>[
              popularcities(),
              Text("Other Cities"),
              Container(
                  width: double.infinity,
                  height: 399,
                  child: ListView.builder(
                      itemBuilder: (_, int index) =>
                          citieslist(this.name[index]),
                      itemCount: this.name.length)),
            ])));
  }
}

class citieslist extends StatelessWidget {
  final String name;

  citieslist(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
            height: 40,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(name,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500))),
                  Divider(
                    thickness: 10,
                  )
                ],
              ),
            )));
  }
}

class popularcities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        child: Column(children:<Widget>[
          Text("Popular Cities"),
          Container(
            width:350,
            height:250,
              child:
          GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children:<Widget>[
                 Card(
                     color: Colors.grey,
                     shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all (Radius.circular(20)),
                  ),
              child:
              Column(children:<Widget>[
                Container(
                  width:80,
                  height:80,
                  decoration: BoxDecoration(
                      image:DecorationImage(
                          image: AssetImage('images/delhi.png'))
                  ),),
                Text("DELHI"),
              ])
          ),
                Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all (Radius.circular(20)),
                    ),
                    child:
                    Column(children:<Widget>[
                      Container(height:20),
                      Container(
                        width:70,
                        height:60,
                        decoration: BoxDecoration(
                            image:DecorationImage(
                                image: AssetImage('images/mumbai.jpeg'))
                        ),),
                      Text("MUMBAI"),
                    ])
                ),
                Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all (Radius.circular(20)),
                    ),
                    child:
                    Column(children:<Widget>[
                      Container(
                        width:80,
                        height:80,
                        decoration: BoxDecoration(
                            image:DecorationImage(
                                image: AssetImage('images/chennai.png'))
                        ),),
                      Text("Chennai"),
                    ])
                ),
                Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all (Radius.circular(20)),
                    ),
                    child:
                    Column(children:<Widget>[
                      Container(
                        width:80,
                        height:80,
                        decoration: BoxDecoration(
                            image:DecorationImage(
                                image: AssetImage('images/pune.png'))
                        ),),
                      Text("PUNE"),
                    ])
                ),
                Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all (Radius.circular(20)),
                    ),
                    child:
                    Column(children:<Widget>[
                      Container(
                        width:80,
                        height:80,
                        decoration: BoxDecoration(
                            image:DecorationImage(
                                image: AssetImage('images/banglore.png'))
                        ),),
                      Text("BANGLORE"),
                    ])
                ),
                Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all (Radius.circular(20)),
                    ),
                    child:
                    Column(children:<Widget>[
                      Container(
                        width:80,
                        height:80,
                        decoration: BoxDecoration(
                            image:DecorationImage(
                                image: AssetImage('images/hyderabad.jpeg'))
                        ),),
                      Text("HYDERABAD"),
                    ])
                ),
          ]))
        ])
    );
  }
}
