import 'package:flutter/material.dart';
import 'package:vapp/constant/const.dart';
import 'package:vapp/gen/assets.gen.dart';

class TaskUserDetails extends StatelessWidget {
  const TaskUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height(context, 0.03),
            width: width(context, 0.25),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(05),
                    child: Image(
                      image: Assets.image.spoon.provider(),
                      width: width(context, 0.05),
                      height: height(context, 0.02),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    // height: height(context, 0.05),
                    width: width(context, 0.14),
                    // color: Colors.red,
                    child: const Text(
                      "Rajesh",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 02),
                    child: CircleAvatar(
                      radius: 06,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: height(context, 0.03),
          width: width(context, 0.28),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              "Not Accepted",
              style: TextStyle(
                fontSize: 15,
                color: Colors.red,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 05),
          child: Image(
            image: Assets.image.reset.provider(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 05),
          child: Container(
            width: width(context, 0.20),
            height: height(context, 0.03),
            decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 03),
                  child: Text(
                    "20 min",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
