import 'package:flutter/material.dart';

import 'register.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: IconButton(
                    iconSize: 35,
                    onPressed: () => Navigator.pushNamed(context, "/login"),
                    icon: Icon(Icons.account_circle),
                  ),
                  title: Text(
                    "Hoşgelin,",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  subtitle: Text(
                    register.t1.text.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            "Bildirimler",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          content: Text(
                            "Tüm bildirimleriniz burada gözükecektir",
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
                    icon: Icon(
                      Icons.notifications_none,
                      size: 24,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: Image.asset("assets/images/banner.png",
                      fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Piyasalar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "AbhayaLibre",
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(
                  height: 10,
                ),
                coin_get(
                  "assets/images/btc.png",
                  "assets/images/btc_graph.png",
                  "Bitcoin",
                  "BTC",
                  "\$47,412.65",
                  "+1.6%",
                  0xFF006400,
                ),
                coin_get(
                  "assets/images/eth.png",
                  "assets/images/down1.png",
                  "Ethereum",
                  "ETH",
                  "\$3,490.20",
                  "-1.6%",
                  0xFFFF0000,
                ),
                coin_get(
                  "assets/images/bnb.png",
                  "assets/images/bnb_graph.png",
                  "Binance Coin",
                  "BNB",
                  "    \$428.2",
                  "+3.45%",
                  0xFF006400,
                ),
                coin_get(
                  "assets/images/ada.png",
                  "assets/images/ada_graph.png",
                  "Cardano",
                  "ADA",
                  "      \$1.149",
                  "+5.12%",
                  0xFF006400,
                ),
                coin_get(
                  "assets/images/doge.png",
                  "assets/images/doge_graph.png",
                  "DOGE",
                  "DOGE",
                  "      \$0.1387",
                  "+16.23%",
                  0xFF006400,
                ),
                coin_get(
                  "assets/images/xrp.png",
                  "assets/images/xrp_graph.png",
                  "XRP",
                  "XRP",
                  "      \$0.089",
                  "+25.53%",
                  0xFF006400,
                ),
                coin_get(
                  "assets/images/usdt.png",
                  "assets/images/usdt_graph.png",
                  "Tether",
                  "USDT",
                  "      \₺14.776",
                  "+0.11%",
                  0xFF006400,
                ),
                coin_get(
                  "assets/images/ltc.png",
                  "assets/images/doge_graph.png",
                  "Uniswap",
                  "UNI",
                  "      \$11.21",
                  "+7.21%",
                  0xFF006400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

coin_get(
  String image,
  String image_2,
  String coin_name,
  String coin_subname,
  String price,
  String rise,
  var _color,
) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.24),
          spreadRadius: 5,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: ListTile(
        leading: Image.asset(image),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              coin_name,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(image_2),
            ),
          ],
        ),
        subtitle: Text(
          coin_subname,
          style: TextStyle(
            color: Colors.grey[700],
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              price,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
            Text(
              rise,
              style: TextStyle(
                color: Color(_color),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
