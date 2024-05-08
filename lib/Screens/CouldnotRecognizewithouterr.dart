import 'package:flutter/material.dart';
import 'package:vapp/constant/const.dart';
import 'package:vapp/gen/assets.gen.dart';

class CouldnotRecognizeWithoutErr extends StatefulWidget {
  const CouldnotRecognizeWithoutErr({super.key});

  @override
  State<CouldnotRecognizeWithoutErr> createState() =>
      _CouldnotRecognizeWithoutErrState();
}

class _CouldnotRecognizeWithoutErrState
    extends State<CouldnotRecognizeWithoutErr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Face Verification",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height(context, 0.42),
                  width: width(context, 0.75),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.red,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: Assets.image.imagefakemen.provider(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: height(context, 0.03),
                ),
                const Text(
                  "We couldnt recognize your face",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: height(context, 0.02),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image(
                    image: Assets.image.gLOBALIcon.provider(),
                    color: Colors.deepPurple,
                  ),
                  label: const Text(
                    "Re-Take",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                        color: Color.fromARGB(255, 143, 117, 246), width: 1),
                    minimumSize: const Size(170, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Divider(
                    height: 05,
                    thickness: 1.0,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(05),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400],
                        minimumSize: const Size(325, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
