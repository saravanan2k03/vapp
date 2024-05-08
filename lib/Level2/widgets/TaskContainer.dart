import 'package:flutter/material.dart';
import 'package:vapp/Level2/widgets/TaskDateDetails.dart';
import 'package:vapp/Level2/widgets/TaskDetail.dart';
import 'package:vapp/Level2/widgets/TaskFromAndTo.dart';
import 'package:vapp/Level2/widgets/TaskuserDetail.dart';
import 'package:vapp/constant/const.dart';

class TaskContainer extends StatefulWidget {
  final bool enable;
  final bool colorenable;
  final bool itemshow;
  const TaskContainer(
      {super.key,
      required this.enable,
      required this.colorenable,
      required this.itemshow});

  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          minHeight: height(context, 0.20),
          maxWidth: width(context, 0.90),
          minWidth: width(context, 0.90),
        ),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            const TaskUserDetails(),
            const TaskDetail(),
            const TaskDateDetails(),
            const TaskFromAndTo(),
            ItemsContainer(
              enabled: widget.itemshow,
            ),
            // Visibility(
            //   visible: false,
            //   replacement: Padding(
            //     padding: const EdgeInsets.all(05),
            //     child: OutlinedButton(
            //       onPressed: () {},
            //       style: OutlinedButton.styleFrom(
            //         // backgroundColor: const Color(0xff5F69C7),
            //         side: const BorderSide(color: Color(0xff5F69C7), width: 1),
            //         minimumSize: const Size(350, 50),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(25),
            //         ),
            //       ),
            //       child: const Text(
            //         "View Details",
            //         style: TextStyle(color: Color(0xff5F69C7), fontSize: 17),
            //       ),
            //     ),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(05),
            //     child: ElevatedButton.icon(
            //       icon: const Icon(
            //         Icons.task_alt_outlined,
            //         color: Colors.white,
            //       ),
            //       onPressed: () {},
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: widget.colorenable
            //             ? const Color(0xff5F69C7)
            //             : Colors.red,
            //         minimumSize: const Size(325, 50),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(25),
            //         ),
            //       ),
            //       label: const Text(
            //         "Notify Staff",
            //         style: TextStyle(color: Colors.white, fontSize: 17),
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 07,
            // )
          ],
        ),
      ),
    );
  }
}

class ItemsContainer extends StatelessWidget {
  final bool enabled;
  const ItemsContainer({super.key, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return enabled
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height(context, 0.15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Shampoo",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 05),
                          child: Text(
                            "x1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Conditioner",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 05),
                          child: Text(
                            "x1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Instructions:",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Please get conditioners.",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Towel",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 05),
                          child: Text(
                            "x1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        : Container();
  }
}
