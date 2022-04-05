import 'package:cathcrop_beta/profile.dart';
import 'package:cathcrop_beta/register.dart';
import 'package:flutter/material.dart';
import 'airdrop.dart';
import 'bottom_navigation_bar.dart';
import 'learn.dart';
import 'login.dart';
import 'market.dart';
import 'splash_screen.dart';
import 'home.dart';
import 'help_support.dart';

void main() => runApp(Catchrop());

class Catchrop extends StatelessWidget {
  const Catchrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => splash_screen(),
        "/login": (context) => login(),
        "/register": (context) => register(),
        "/home": (context) => home(),
        "/bottom_navigation_bar": (context) => bottom_navigation_bar(),
        "/learn": (context) => learn(),
        "/market": (context) => market(),
        "/airdrop": (context) => airdrop(),
        "/profile": (context) => profile(),
        "/help_support": (context) => help_support(),
      },
      title: "Catchrop",
    );
  }
}
