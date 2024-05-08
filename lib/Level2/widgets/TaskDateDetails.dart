import 'package:flutter/material.dart';
import 'package:vapp/constant/const.dart';

class TaskDateDetails extends StatelessWidget {
  const TaskDateDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height(context, 0.03),
            width: width(context, 0.60),
            // color: Colors.red,
            child: const Padding(
              padding: EdgeInsets.only(left: 05),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 05),
                    child: Text(
                      "21 Jul 2024",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: VerticalDivider(
                      width: 2.0,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 02),
                    child: Text(
                      "03:00 am",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width(context, 0.25),
            height: height(context, 0.03),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Center(
              child: Text(
                '#68988',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
