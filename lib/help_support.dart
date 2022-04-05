import 'package:flutter/material.dart';

class help_support extends StatelessWidget {
  const help_support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.82,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      "Bize Ulaşın",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: const TextField(
                            decoration: InputDecoration(
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
                                ))),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: const TextField(
                            decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                labelText: "E-mail",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                errorMaxLines: 20,
                                hintText: "erkanr.celik@gmail.com",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.black,
                                ))),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: const TextField(
                            decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                labelText: "Konu",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                errorMaxLines: 20,
                                hintText: '',
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.black,
                                ))),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: const TextField(
                            maxLines: 7,
                            minLines: 6,
                            decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                labelText: "Mesaj",
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                errorMaxLines: 20,
                                hintText: "",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.black,
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Text(
                                  "Gönderildi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                content: Text(
                                  "Bize ulaştığınız için teşekkür ederiz, en kısa sürede dönüş yapılacaktır",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              );
                            },
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.send_sharp,
                                size: 34,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Gönder",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
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
