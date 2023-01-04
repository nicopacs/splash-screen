import 'package:final_project_group/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) => const HomePage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/images/logo_transparent.png"),
              width: 100,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitSpinningLines(
              color: Colors.grey,
              size: 50.0,
            ),
          ],
        ),
      ),

    );
  }
}


