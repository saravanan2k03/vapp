import 'package:flutter/material.dart';
import 'package:vapp/constant/const.dart';

class TaskFromAndTo extends StatelessWidget {
  const TaskFromAndTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 05),
            child: Container(
                width: width(context, 0.50),
                child: const Row(
                  children: [
                    Text(
                      "From:",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 03),
                      child: Text(
                        "Pantry",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
          ),
          Container(
              child: const Row(
            children: [
              Text(
                "To:",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: EdgeInsets.only(left: 03),
                child: Text(
                  "Reception",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
