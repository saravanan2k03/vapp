import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vapp/Screens/ImageVerifiedSucessfully.dart';
import 'package:vapp/constant/const.dart';
import 'package:vapp/gen/assets.gen.dart';

class MainPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const MainPage({super.key, required this.cameras});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late CameraController cameraController;
  late Future<void> cameraValue;
  double _progressValue = 0.0;
  Timer? _timer;
  bool isroute = false;
  late File routefile;
  void startCamera(int camera) {
    cameraController = CameraController(
        widget.cameras[camera], ResolutionPreset.high,
        enableAudio: false);

    cameraValue = cameraController.initialize();
  }

  Future<File> saveImage(XFile image) async {
    final downlaodPath = await ExternalPath.getExternalStoragePublicDirectory(
        ExternalPath.DIRECTORY_DOWNLOADS);
    final fileName = '${DateTime.now().millisecondsSinceEpoch}.png';
    final file = File('$downlaodPath/$fileName');

    try {
      await file.writeAsBytes(await image.readAsBytes());
    } catch (_) {}

    return file;
  }

  takepicture(context) async {
    XFile? image;
    if (cameraController.value.isTakingPicture ||
        !cameraController.value.isInitialized) {
      return;
    }
    image = await cameraController.takePicture();
    final file = await saveImage(image);
    if (kDebugMode) {
      print(file.path);
    }

    setState(() {
      routefile = file;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImageVerifiedSucessfully(file: routefile),
        ),
      );
    });
  }

  void _startTimer(context) async {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_progressValue < 1.0) {
          _progressValue += 0.1;
        } else {
          _timer?.cancel();
          takepicture(context);
        }
      });
    });
  }

  int started = 0;

  @override
  void initState() {
    // TODO: implement initState
    started = 0;
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (started == 0) {
      startCamera(0);
      _startTimer(context);
      started = 1;
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        takepicture(context);
      }),
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
          FutureBuilder(
              future: cameraValue,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: 100,
                        child: CameraPreview(cameraController),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
          CameraHolder(
            progressValue: _progressValue,
          ),
        ],
      ),
    );
  }
}

class CameraHolder extends StatelessWidget {
  final double progressValue;
  const CameraHolder({
    super.key,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 05),
              child: Text("Please look into the camera and hold still",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white)),
            ),
            SizedBox(
              height: height(context, 0.10),
            ),
            SizedBox(
              height: height(context, 0.45),
              width: width(context, 0.90),
              // color: Colors.red,
              child: Image(
                image: Assets.image.rectangleholder.provider(),
                fit: BoxFit.cover,
              ),
            ),
          ],
        )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: height(context, 0.04),
                  width: width(context, 0.70),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: progressValue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 05),
                        child: Text(
                          '${(progressValue * 100).toStringAsFixed(0)}%',
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
