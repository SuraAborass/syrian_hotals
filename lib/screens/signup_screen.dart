import 'package:flutter/material.dart';
import 'package:syrian_hotelsui/widgets/appar_widget.dart';
import 'package:get/get.dart';

import 'login_screen.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool passwordvisible1 = true;
  bool passwordvisible2 = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        alignment: Alignment.center,
                        child: const Text(
                          "Create an account",
                          style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                        )),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter Your Name',
                        prefixIcon: const Icon(Icons.person_outline),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'example@domain.com',
                        prefixIcon: const Icon(Icons.alternate_email),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter Your Password',
                        prefixIcon: const Icon(Icons.security),
                        suffixIcon: IconButton(
                          icon: Icon(passwordvisible1
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passwordvisible1 = !passwordvisible1;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordvisible1,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Confirm Your Password',
                        prefixIcon: const Icon(Icons.security),
                        suffixIcon: IconButton(
                          icon: Icon(passwordvisible2
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passwordvisible2 = !passwordvisible2;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          const BorderSide(width: 2, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordvisible2,
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
                                child:MaterialButton(
                                  height: 52,
                                  minWidth: deviceSize.width,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                                  child: const Text(
                                    'SignUp',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {},
                                )),
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Have an account?',
                          style:
                          TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const LoginScreen());
                          },
                          child: const Text(
                            'SignIn',
                            style:
                            TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.deepPurple),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
