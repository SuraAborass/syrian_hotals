import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.deepPurple,
    elevation: 0,
  );
}
