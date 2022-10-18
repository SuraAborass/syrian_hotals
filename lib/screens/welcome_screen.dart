import 'package:flutter/material.dart';
import 'package:syrian_hotelsui/screens/login_screen.dart';
import 'package:syrian_hotelsui/screens/signup_screen.dart';
import 'package:get/get.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome>
    with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 7), value: 0,
        lowerBound: 0.8,
        upperBound: 1)
      ..repeat();

    animation =  CurvedAnimation(parent: _controller, curve: Curves.linear);

  }

  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.black26,
        body: Column(children: [
          Stack(children: [
            ScaleTransition(scale: animation,
              child: Image.asset(
                'assets/images/Image 2.png',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),),
            Image.asset(
              'assets/images/Rectangle 1.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 30),
              child: Image.asset(
                'assets/images/Logo.png',
                height: 138,
                width: 196,
              ),
            ),
            Center(
                child:Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(top: 437, bottom: 40,right: 20,left: 20),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          color: Colors.deepPurple),
                      height: 52,
                      width: deviceSize.width,
                      child: Center(
                          child: MaterialButton(
                            height: 52,
                            minWidth: deviceSize.width,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0))),
                            child: const Text(
                              'Create an account!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Get.to(const Register());
                            },
                          ))),)
            ),
            Center(
                child:Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(top: 500, bottom: 10,right: 20,left: 20),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          color: Colors.white),
                      height: 52,
                      width: deviceSize.width,
                      child: Center(
                          child: MaterialButton(
                            height: 52,
                            minWidth: deviceSize.width,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0))),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                            onPressed: () {
                              Get.to(const LoginScreen());
                            },
                          ))),)
            )
          ]),
        ]));
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}



