import 'package:flutter/material.dart';
import 'package:vapp/Level2/widgets/TaskContainer.dart';
import 'package:vapp/constant/const.dart';
import 'package:vapp/gen/assets.gen.dart';

class TaskOftheDay extends StatefulWidget {
  const TaskOftheDay({super.key});

  @override
  State<TaskOftheDay> createState() => _TaskOftheDayState();
}

class _TaskOftheDayState extends State<TaskOftheDay> {
  List<String> status = ['Not Accepted', 'Ongoing', 'Schedule', 'Completed'];
  List<bool> enable = [true, false, true, false];
  List<bool> colorenable = [false, true, true, true];
  List<bool> itemshow = [false, true, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Tasks of the Day",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.image.ellipse185.path),
              radius: 20,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: height(context, 0.03),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height(context, 0.05),
                width: width(context, 0.85),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Negative notification type description",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                    Icon(Icons.close)
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: height(context, 0.10),
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    itemCount: status.length,
                    itemBuilder: (context, index) {
                      return StatusContainer(
                        Status: status[index],
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: enable.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return TaskContainer(
                      enable: enable[index],
                      colorenable: colorenable[index],
                      itemshow: itemshow[index],
                    );
                  })),
        ],
      ),
    );
  }
}

class StatusContainer extends StatelessWidget {
  final String Status;
  const StatusContainer({
    super.key,
    required this.Status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: height(context, 0.12),
      width: width(context, 0.35),
      decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: const Color.fromARGB(255, 219, 214, 214),
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        Status,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      )),
    );
  }
}
