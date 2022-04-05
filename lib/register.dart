import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  static TextEditingController t1 = TextEditingController();
  static TextEditingController t2 = TextEditingController();
  static TextEditingController t3 = TextEditingController();
  static TextEditingController t4 = TextEditingController();

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
                      children: const [
                        Text(
                          "Kayıt Ol",
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
                        SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: const InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: "Ad Soyad",
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
                          controller: register.t1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: const InputDecoration(
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
                          controller: register.t2,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: "Telefon Numarası",
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            errorMaxLines: 20,
                            hintText: "+90 534 241 96 63",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          controller: register.t3,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: const InputDecoration(
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
                          controller: register.t4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 38,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.popAndPushNamed(context, "/login"),
                            child: const Text(
                              "Kayıt Ol",
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
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Zaten Üye misiniz?",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Montserrat13",
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.popAndPushNamed(context, "/login"),
                                child: const Text(
                                  "Giriş Yap",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
