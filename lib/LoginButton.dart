
import 'package:flutter/material.dart';

Widget loginButton(BuildContext context) {
  return MaterialButton(
    minWidth: double.infinity,
    height: 60,
    onPressed: () {
      Navigator.pushNamed(context, '/loginpage');
    },
    color: Colors.indigoAccent[400],
    shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(40)),
    child: const Text(
      "Login",
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white70),
    ),
  );
}

Widget signupButton(BuildContext context) {
  return MaterialButton(
    minWidth: double.infinity,
    height: 60,
    onPressed: () {
      Navigator.pushNamed(context, '/signup');
    },
    color: Colors.redAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    child: const Text(
      "Sign UP",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  );
}
