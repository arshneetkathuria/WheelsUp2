import 'package:flutter/material.dart';

class SingleTile extends StatelessWidget {
  final title;
  final content;

  SingleTile({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.blueGrey[100],
            ),
            child: 
                 ExpansionTile(
                title: Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                backgroundColor: Colors.blueGrey[100],
                children: [
                  Divider(color: Colors.grey, thickness: 2),
                  Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(content,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey[850], fontSize: 16, height: 1.1)))
                ],
              ),
            ),),
        
         Container(height: 10,)
      ],     
    );

  }
}