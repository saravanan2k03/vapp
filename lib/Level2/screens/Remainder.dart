import 'package:flutter/material.dart';
import 'package:vapp/Level2/screens/Notify.dart';
import 'package:vapp/Level2/widgets/TaskContainer.dart';
import 'package:vapp/constant/const.dart';
import 'package:vapp/gen/assets.gen.dart';

class remainder extends StatefulWidget {
  const remainder({super.key});

  @override
  State<remainder> createState() => _remainderState();
}

class _remainderState extends State<remainder> {
  List<bool> enable = [false];
  List<bool> show = [false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: height(context, 0.50),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    Assets.image.rafiki.path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Reminder",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "This Request needs to be completed soon",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ),
              TaskContainer(
                  enable: enable[0], colorenable: enable[0], itemshow: show[0]),
              SizedBox(
                height: height(context, 0.05),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 55,
                    width: 160,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color(
                              0xff5F69C7,
                            )),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Text('Dismiss',
                              style: TextStyle(
                                  color: Color(
                                    0xff5F69C7,
                                  ),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        )),
                  ),
                  SizedBox(
                    height: 55,
                    width: 160,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xff5F69C7),
                            side: const BorderSide(
                                color: Color(
                              0xff5F69C7,
                            )),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const notify()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Text('Notify Staff',
                              style: TextStyle(
                                  color: Color(0xffFFECE2),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15)),
                        )),
                  ),
                ],
              ),
            ]),
          ),
        ),
      )),
    );
  }
}
