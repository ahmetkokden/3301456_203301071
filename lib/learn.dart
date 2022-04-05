import 'package:cathcrop_beta/blog_page.dart';
import 'package:flutter/material.dart';

class learn extends StatelessWidget {
  const learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 23, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlogPage(
                            title: "Catchrop Nedir",
                            text: "Öğren",
                            title2: "Yazar : Erkan Çelik",
                            title3: "Öğren",
                            blogContent:
                                "Cathcrop, çeşitli kripto para birimlerinin ticareti için bir platform sağlayan bir kripto para borsasıdır. Mart 2022 itibarıyla Cathcrop, işlem hacmi açısından dünyanın en büyük kripto para borsası oldu.Cathcrop, dünyanın en iyi yazılımcısı olan(Ahmet Cevahir ÇINAR tarafından eğitildi.) Erkan Çelik tarafından kuruldu. Catchrop başlangıçta Türkiye'de bulunuyordu, ancak daha sonra tüm dünyaya açıldı.",
                            rate: 4.3,
                            imagePath: "assets/images/logo.png",
                          ),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 7),
                        width: double.infinity,
                        height: 230,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      height: 19,
                      decoration: BoxDecoration(
                          color: Color(0xFF303030),
                          borderRadius: BorderRadius.circular(4)),
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Cathcrop Nedir?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: "Montserrat13",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "Catchrop, 23 Mart 2022 tarihinde kurulan dünyanın en iyi bitcoin ve kriptopara alım satım platformudur.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        content_get(
                            "BLOG 1",
                            "Bitcoin",
                            "01.01.2022",
                            "Yazar : Erkan Çelik",
                            "Erkan Çelik",
                            "CATCHROP",
                            "assets/images/blog4.jpg",
                            context,
                            "2008 krizi sonrası Satoshi Nakamato adlı kişi ya da kişiler uçtan uca elektronik ödeme sistemi olan Bitcoin'e dair teknik yazılarını yayınladılar. Böylece Bitcoin merkezsizleştirilmiş, üçüncül müdahalelere karşı korumalı kripto para birimi olarak ortaya çıktı. 2009 yılında halka açık ağ olarak kullanıma girdi. Sonrasında Bitcoin, ilk başarılı kripto para olarak '1. nesil blockchain' olarak adlandırıldı."),
                        content_get(
                            "BLOG2",
                            "Blockchain Teknolojisi",
                            "01.01.2022",
                            "Yazar : Erkan Çelik",
                            "Erkan Çelik",
                            "CATCHROP",
                            "assets/images/blog3.jpg",
                            context,
                            "Blockchain, yani Blok Zinciri, bloklardan oluşan zincir yapıyı tanımlıyor. Blockchain, dağınık yapıda bir veritabanı sistemi olarak şifrelenmiş işlemlerin takibini sağlar. Blockchain, iş ağında yer alan işlemlerin kaydedilmesi ve varlıkların takip edilmesi gibi süreçleri kolaylaştırmaktadır. Aynı zamanda bu sistem, paylaşılabilen ve üzerinde değişiklik yapılamayan bir defter olarak da düşünülebilir."),
                        content_get(
                            "BLOG3",
                            "Dogecoin ve Shiba Coin",
                            "01.01.2022",
                            "Yazar : Erkan Çelik",
                            "Erkan Çelik",
                            "CATCHROP",
                            "assets/images/blog4.jpg",
                            context,
                            "Dogecoin, Shiba Inu gibi memecoinler son zamanlarda yaptıkları işbirliği ve ortaklıklarla birlikte her ne kadar şaka amaçlı olarak çıkmış olsalar bile büyük projelere imza atmaya başladılar. Şimdi de DOGE ve SHIB'e bu alanda yeni bir rakip daha geldi. Hem de devasa bir işbirliği ile..."),
                        content_get(
                            "BLOG4",
                            "NFT",
                            "01.01.2022",
                            "Yazar : Erkan Çelik",
                            "Erkan Çelik",
                            "CATCHROP",
                            "assets/images/blog5.jpg",
                            context,
                            "Son dönemde herkesin merak ettiği konulardan birisi de, NFT kavramı. Non Fungible Token ya da Türkçe’deki karşılığı ile Değiştirilemez Token olarak ifade edilen NFT’ler diğer kripto paraların aksine takas edilemiyor. NFT haline getirilen herhangi bir fotoğrafın / eserin milyonlarca dolar karşılığında alıcı bulması sonrasında NFT nedir? NFT nasıl yapılır? sorguları arama motorlarında adeta tavan yaptı."),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

content_get(
  String toptext,
  String bodytext1,
  String bodytext2,
  String bodytext3,
  String bottomtext1,
  String bottomtext2,
  String image,
  BuildContext context,
  String blogContent,
) {
  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlogPage(
          title: bodytext1,
          text: "Öğren",
          title2: bodytext3,
          title3: "Öğren",
          rate: 4.3,
          blogContent: blogContent,
          imagePath: image,
        ),
      ),
    ),
    child: Container(
      margin: EdgeInsets.only(left: 7, right: 20, bottom: 30, top: 10),
      width: 330,
      height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        color: Colors.black,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 23, 0, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  color: Color(0xFF303030),
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                toptext,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bodytext1,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 15,
                          color: Color(0xFF8C8C8C),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          bodytext2,
                          style: TextStyle(
                            color: Color(0xFF8C8C8C),
                            fontFamily: "Poppins",
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.black,
                    ),
                    child: Text(
                      bodytext3,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 38,
                ),
                title: Text(
                  bottomtext1,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  bottomtext2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
