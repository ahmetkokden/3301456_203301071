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

void main() => runApp(const Catchrop());

class Catchrop extends StatelessWidget {
  const Catchrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const splash_screen(),
        "/login": (context) => const login(),
        "/register": (context) => const register(),
        "/home": (context) => const home(),
        "/bottom_navigation_bar": (context) => const bottom_navigation_bar(),
        "/learn": (context) => const learn(),
        "/market": (context) => const market(),
        "/airdrop": (context) => const airdrop(),
        "/profile": (context) => const profile(),
        "/help_support": (context) => const help_support(),
      },
      title: "Catchrop",
    );
  }
}
