import 'package:flutter/material.dart';
import 'package:syrian_hotelsui/screens/signup_screen.dart';
import 'package:syrian_hotelsui/widgets/appar_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white38,
        appBar: buildAppBar(context),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'user name',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.person_outline),
                            border: const OutlineInputBorder(),
                            hintText: 'Enter Your Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(80.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'password',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.security),
                            suffixIcon: IconButton(
                              icon: Icon(passwordvisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  passwordvisible = !passwordvisible;
                                });
                              },
                            ),
                            border: const OutlineInputBorder(),
                            hintText: 'Enter Your Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(80.0),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: passwordvisible,
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        Center(
                            child: Expanded(
                              child: Container(
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0))),
                                        child: const Text('Login',
                                            style: TextStyle(
                                                fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black)),
                                        onPressed: () {},
                                      )
                                  )
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don`t have an account?',
                              style:
                              TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(const Register());
                              },
                              child: const Text(
                                'SignUp',
                                style:
                                TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.deepPurple),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )))));
  }
}
