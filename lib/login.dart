import 'package:flutter/material.dart';
import 'register.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static TextEditingController s1 = TextEditingController();
  static TextEditingController s2 = TextEditingController();

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Giriş Yap",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat13",
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Blockchain'e Dürüstlük Katıyoruz.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat13",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: "E-posta",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            errorMaxLines: 20,
                            hintText: "erkanr.celik@gmail.com",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          controller: login.s1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: "Şifre",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            errorMaxLines: 20,
                            hintText: "",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          controller: login.s2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 38,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (register.t2.text.toString() ==
                                      login.s1.text.toString() &&
                                  register.t4.text.toString() ==
                                      login.s2.text.toString()) {
                                Navigator.popAndPushNamed(
                                    context, "/bottom_navigation_bar");
                              }
                            },
                            child: Text(
                              "Giriş Yap",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat13",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 38,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              register.t1.clear();
                              register.t2.clear();
                              register.t3.clear();
                              register.t4.clear();
                              login.s1.clear();
                              login.s2.clear();
                              Navigator.pushNamed(
                                  context, "/bottom_navigation_bar");
                            },
                            child: Text(
                              "Misafir Olarak Devam Et",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat13",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Üye Değil misiniz?",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Montserrat13",
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, "/register"),
                                child: Text(
                                  "Kayıt Ol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat13",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
