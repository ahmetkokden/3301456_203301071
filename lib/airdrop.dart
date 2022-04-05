import 'package:cathcrop_beta/blog_page.dart';
import 'package:flutter/material.dart';

class airdrop extends StatelessWidget {
  const airdrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(17, 35, 17, 0),
            child: Container(
              child: Column(
                children: [
                  airdrop_get(
                      "assets/images/airdrop1.png",
                      "assets/images/airdrop_banner1.jpg",
                      "Spintop",
                      "SPIN",
                      context,
                      140.0,
                      "Spintop'un vizyonu, dağınık blok zinciri oyun dünyasını birleştiren tek bir platform oluşturmaktır. Oyuncular, yatırımcılar ve oyun geliştiriciler topluluğunun oyunları keşfedebileceği, oynayabileceği ve yatırım yapabileceği, jetonlarını alıp takas edebileceği ve NFT'leri paylaşabileceği dinamik bir GameFi ekosistemi olarak tasarlanan Spintop, blok zinciri oyunlarını sonuna kadar deneyimlemek için ihtiyacınız olan araçlara sahiptir."),
                  airdrop_get(
                      "assets/images/airdrop2.png",
                      "assets/images/airdrop_banner2.jpg",
                      "GEMS Esports 3.0 Platform",
                      "GEMS",
                      context,
                      200.0,
                      "CMC X GEMS NFT Airdrop: Katılın ve 100.000 Dolarlık Ödülü Paylaşın! İnanılmaz NFT Airdrop'umuza katılarak GEMS IDO Whitelist spotlarını ve GEMS NFT airdroplarını kazanma fırsatını yakalayın! Yaklaşan TGE'mizi kutlamak için GEMS, 1200 şanslı kazanana toplam 100.000 \$ değerinde ödül veriyor. Tek yapmanız gereken aşağıdaki görevleri tamamlamak"),
                  airdrop_get(
                      "assets/images/airdrop3.png",
                      "assets/images/airdrop_banner3.jpg",
                      "Age of Tanks",
                      "A.O.T",
                      context,
                      120.0,
                      "Ezici tepki nedeniyle, AOT ekibi NFT ödüllerini artırmaya karar verdi! Age of Tanks Metaverse'deki yolculuğunuza başlamak için şimdi Origin Tank NFT'ye sahip olun! 22 Şubat'ta çıkacak Beta Oyununda, türünün tek örneği olan bu ilk nesil, tam olarak bir araya getirilmiş zorlu NFT'leri ve NFT'lerin staking işlevini hemen devreye sokarak \$A.O.T'yi eve getirmeye hazır olun!"),
                  airdrop_get(
                      "assets/images/airdrop4.png",
                      "assets/images/airdrop_banner4.jpg",
                      "MetaGear",
                      "GEAR",
                      context,
                      150.0,
                      "MetaGear, modern bir Pixel dünyası olan Metaverse'in kapılarını açan popüler TV programı ''ROBOT WARS''ta süper arabalar arasındaki yoğun savaşlardan ilham alıyor. Bu dünyada oyuncular mucit olarak hareket eder ve kendi savaş makinelerini tasarlar. Her makine parçasının kendine has özellikleri vardır ve sonsuz olanaklar için kullanılabilir. Oyuncuların Kampanya, PvP, Turnuva ve Lonca arasından seçim yapabilecekleri 4 oyun modu vardır. Beceriler, yaratıcılık ve biraz şansla, savaşlarda zafer ilan edecek ve değerli NFT'ler kazanacaksınız."),
                  airdrop_get(
                    "assets/images/airdrop5.png",
                    "assets/images/airdrop_banner5.jpg",
                    "Lunar",
                    "LNR",
                    context,
                    160.0,
                    "Lunar, kripto ve NFT ticaretinin tüm sürecini sorunsuz bir kullanıcı deneyimi ile birbirine bağlı tek bir platformda düzenlemeyi amaçlıyor. LNR, tüm Ay Ekosistemi için bağ dokusu görevi gören bir Binance Akıllı Zincir belirtecidir. Lunar platformunda muazzam bir fayda sağlıyor ve zincirler arası kesintisiz ticareti desteklememize izin veriyor. Ayrıca pasif yansımaları tutuculara dağıtır.",
                  ),
                  airdrop_get(
                    "assets/images/airdrop6.png",
                    "assets/images/airdrop_banner6.jpg",
                    "Zamio",
                    "ZAM",
                    context,
                    130.0,
                    "Zamio TrillioHeirs NFT, karakterlerin her birinin süper güçlere sahip olduğu paralel meta veri kaynakları fikrinden ilham almıştır. Her NFT'nin kendine has özellikleri vardır ve sonsuz olasılıklar için kullanılabilir. TrillioHeirs sahipleri DAO Yönetişimi'ne katılabilir, ZAMpad'e artırılmış garantili tahsisler alabilir, Özel Havuzlara ve Tohum Havuzlarına katılma fırsatı elde edebilir, Ödül Havuzlarından gelir toplayabilir, SandBox'ta Zamio meta evreninde NFT kullanabilir ve Play2Earn Game'de para kazanabilir. Beceriler, yaratıcılık ve biraz şansla, NFT'lerinizi Zamio ekosistem yönetimine katılmak ve \$ZAM jetonları kazanmak için kullanabilirsiniz.",
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

airdrop_get(
  String imagePath,
  String image,
  String text1,
  String text2,
  BuildContext context,
  double _height,
  String blogContent,
) {
  return Container(
    margin: EdgeInsets.only(bottom: 11),
    height: _height,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(1, 3), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                text1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: "Abhaya_Libre",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            width: 56,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextButton(
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlogPage(
                                imagePath: imagePath,
                                title: text1,
                                title2: text2,
                                title3: "",
                                rate: 4.3,
                                text: "Airdrop",
                                blogContent: blogContent,
                              )),
                    ),
                child: Text(
                  "KATIL",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Abhaya_Libre",
                    fontWeight: FontWeight.w700,
                  ),
                )),
          )
        ],
      ),
    ),
  );
}


