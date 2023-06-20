import 'package:flutter/material.dart';
import 'package:news_app/features/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // we want the splash screen to disappear after 1-1.5 sec. For that, we will call initState function.
  // initState function runs when the class gets called
  @override
  void initState() {
    super.initState();
    // initState will change the state of the class corresponding with the function that is calling (_navigateToHome();)
    _navigateToHome();
  }

  void _navigateToHome() async {
    // this is an async function because we need to use the time here
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // after this delay of 1.5 sec we want to navigate to home
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
    // we use pushReplacement instead of push because we want to avoid the user going back to this screen when pressing the back button
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/tv.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'News App',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
