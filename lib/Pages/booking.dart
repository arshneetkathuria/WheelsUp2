import 'package:flutter/material.dart';
import 'package:wheelsup/Components/singleTile.dart';

import '../Components/singleTile.dart';
class Booking extends StatefulWidget {
  _Booking createState() => _Booking();
}
class _Booking extends State<Booking>{

  var bookingFaq=[
    {"title": "How do I make a booking?",
      "content":"This depends ont the pricing plan that you select.If you go for Unlimited kms pricing plans (available only without fuel"
          ",a nd only for bookings whose duration is more than 24 hours),there is absolutely no limit to kilometres that you can drive,and you have complete "
          "flexibility of driving the car as much as you want .You can still drive beyond the kilometres limit,but the additional kilometres"
          "clocked will attract an additional charge"
    },
    {
      "title":"What if I need to modify or cancel my booking?",
      "content":"This depends ont the pricing plan that you select.If you go for Unlimited kms pricing plans (available only without fuel"
          ",a nd only for bookings whose duration is more than 24 hours),there is absolutely no limit to kilometres that you can drive,and you have complete "
          "flexibility of driving the car as much as you want .You can still drive beyond the kilometres limit,but the additional kilometres"
          "clocked will attract an additional charge"
    },
    {
      "title":"What happens if I return the car late?",
      "content":"This depends ont the pricing plan that you select.If you go for Unlimited kms pricing plans (available only without fuel"
          ",a nd only for bookings whose duration is more than 24 hours),there is absolutely no limit to kilometres that you can drive,and you have complete "
          "flexibility of driving the car as much as you want .You can still drive beyond the kilometres limit,but the additional kilometres"
          "clocked will attract an additional charge"
    },
    {
      "title":"If I return the car before the scheduled end time of my booking,do I get any refund?",
      "content":"This depends ont the pricing plan that you select.If you go for Unlimited kms pricing plans (available only without fuel"
          ",a nd only for bookings whose duration is more than 24 hours),there is absolutely no limit to kilometres that you can drive,and you have complete "
          "flexibility of driving the car as much as you want .You can still drive beyond the kilometres limit,but the additional kilometres"
          "clocked will attract an additional charge"
    },
    {
      "title":"What all is included in my booking?",
      "content":"This depends ont the pricing plan that you select.If you go for Unlimited kms pricing plans (available only without fuel"
          ",a nd only for bookings whose duration is more than 24 hours),there is absolutely no limit to kilometres that you can drive,and you have complete "
          "flexibility of driving the car as much as you want .You can still drive beyond the kilometres limit,but the additional kilometres"
          "clocked will attract an additional charge"
    },
    {
      "title":"Is fuel included in my booking?",
      "content":"This depends ont the pricing plan that you select.If you go for Unlimited kms pricing plans (available only without fuel"
          ",a nd only for bookings whose duration is more than 24 hours),there is absolutely no limit to kilometres that you can drive,and you have complete "
          "flexibility of driving the car as much as you want .You can still drive beyond the kilometres limit,but the additional kilometres"
          "clocked will attract an additional charge"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: bookingFaq.length,
              itemBuilder: (BuildContext context, int index) {
                return SingleTile(
                    title: bookingFaq[index]["title"],
                    content: bookingFaq[index]["content"]);
              },
            ),);

  }
}