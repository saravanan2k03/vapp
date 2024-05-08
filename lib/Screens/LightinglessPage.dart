import 'package:flutter/material.dart';
import 'package:vapp/constant/const.dart';
import 'package:vapp/gen/assets.gen.dart';

class LightingLessPage extends StatelessWidget {
  const LightingLessPage({super.key});

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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Image(
              image: Assets.image.imagefakemen.provider(),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.5),
          ),
          const IndicationContainer(),
        ],
      ),
    );
  }
}

class IndicationContainer extends StatelessWidget {
  const IndicationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Please try again with better lighting",
              style: TextStyle(
                  color: Color.fromARGB(255, 226, 226, 226),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: height(context, 0.25),
            width: width(context, 0.65),
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  // color: Colors.amber,
                  height: height(context, 0.21),
                  child: const Icon(
                    Icons.sunny,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: Assets.image.gLOBALIcon.provider()),
                    const Padding(
                      padding: EdgeInsets.only(left: 05),
                      child: Text(
                        "Lighting is less, Try Again",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Image(image: Assets.image.gLOBALIcon.provider()),
              label: const Text(
                "Re-Take",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 143, 117, 246),
                minimumSize: const Size(170, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
