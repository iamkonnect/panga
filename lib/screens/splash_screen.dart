import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for rootBundle
import 'dart:typed_data'; // Import for Uint8List
import 'dart:async'; // Import for Completer
import 'dart:ui' as ui; // Import for ui.Image
import 'home_screen.dart'; // Import for HomeScreen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: FutureBuilder<ui.Image>(
          future: _loadSplashImage(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return RawImage(image: snapshot.data);
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<ui.Image> _loadSplashImage() async {
    final ByteData data = await rootBundle.load('assets/panga logo.png');
    final Uint8List bytes = data.buffer.asUint8List();
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(bytes, (ui.Image img) {
      completer.complete(img);
    });
    return completer.future;
  }
}
