import 'dart:async';

import 'package:flutter/material.dart';
void main()
{
  runApp(const MaterialApp(home: HomePage()));
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  late Timer _timer;

  void startDelay(){
    _timer = Timer(const Duration(seconds: 3), _goToNextpage);
  }
  
void _goToNextpage() {
  Navigator.push(context, MaterialPageRoute(builder:(context)=>const LoginPage()));

}
 @override
  void initState() {
    super.initState();
    startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text("Splash screen")),
      ),
      body: const Text("HI")
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("loginPage")),),
    );
  }
}




