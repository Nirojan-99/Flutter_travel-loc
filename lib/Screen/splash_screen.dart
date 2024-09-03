import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _paddingTop = 200;
  double _opacity = 0.2;
  final int _duration = 1;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0)).then((value) => setState(() {
          _paddingTop = 0;
          _opacity = 1;
        }));
    _navigateScreen();
  }

  _navigateScreen() {
    Future.delayed(Duration(seconds: _duration + 2)).then((value) {
      Navigator.of(context).pushReplacementNamed("/dashboard");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).splashColor,
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: _duration),
            curve: Curves.fastOutSlowIn,
            padding: EdgeInsets.only(top: _paddingTop),
            margin: const EdgeInsets.symmetric(
              vertical: 0,
            ),
            child: AnimatedOpacity(
              opacity: _opacity,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: _duration),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Ceylon Voyages",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "DeliusSwashCaps-Regular",
                          fontSize: 40,
                          color: Color.fromRGBO(14, 91, 101, 1)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      "images/splash1.png",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Explore Exciting Places",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "RedHatDisplay",
                          fontSize: 24,
                          color: Color.fromRGBO(14, 91, 101, 1)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
