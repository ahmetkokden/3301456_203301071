import 'package:catchrop/profile_content.dart';
import 'package:flutter/material.dart';
import 'register.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 239,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/profile_top_banner.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        width: 101,
                        height: 101,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(101)),
                      ),
                      Text(
                        register.t1.text.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        register.t2.text.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        register.t3.text.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
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
                        child: const ListTile(
                          leading: Icon(
                            Icons.notifications_none,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Bildirimler",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[700],
                        height: 26,
                      ),
                      menu_get(context, Icons.security, "Güvenlik", "Güvenlik",
                          "Catchrop Yönetimi, kurum çapında gizliliği, bütünlüğü ve tüm fiziksel ve elektronik bilgi varlıklarını korumak için taahhütte bulunmuştur. Bilgi ve bilgi güvenliği gereksinimleri kurumsal hedefler ile aynı doğrultuda olacaktır. Ayrıca, ilgili teknolojik gelişmeleri yakından takip etmek, günlük operasyonel işler yapılırken, hizmet kalitesini artırıcı, önleyici faaliyetler ile sorunlar oluşmadan önlem almak hedefleri oluşturulmuştur.Bu nedenle Catchrop'un bilgi güvenliğini yönetmekteki amacı (bilginin gizlilik, bütünlük ve erişilebilirlik kapsamında değerlendirilerek içeriden ve/veya dışarıdan gelebilecek, kasıtlı veya kazayla oluşabilecek tüm tehditlerden korunması ve yürütülen faaliyetlerin etkin, doğru, hızlı ve güvenli olarak gerçekleştirilmesini temin etmek) olarak özetlenebilir."),
                      Divider(
                        color: Colors.grey[700],
                        height: 26,
                      ),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/help_support"),
                        child: const ListTile(
                          leading: Icon(
                            Icons.help_outline_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Yardım ve Destek",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[700],
                        height: 26,
                      ),
                      menu_get(
                        context,
                        Icons.task_alt_outlined,
                        "Şartlar ve koşullar",
                        "Şartlar ve koşullar",
                        "Lütfen sitemizi kullanmadan evvel kullanım şartları’nı dikkatlice okuyunuz. Bu web sitesini kullanan ve iletişim halinde olan kullanıcılarımız aşağıdaki şartları kabul etmiş varsayılmaktadır:Sitemizdeki web sayfaları ve ona bağlı tüm sayfalar Catchrop firmasının malıdır ve onun tarafından işletilir. Sizler (Kullanıcı) sitede sunulan tüm hizmetleri kullanırken aşağıdaki şartlara tabi olduğunuzu, sitedeki hizmetten yararlanmakla ve kullanmaya devam etmekle; Bağlı olduğunuz yasalara göre sözleşme imzalama hakkına, yetkisine ve hukuki ehliyetine sahip ve 18 yaşın üzerinde olduğunuzu, bu sözleşmeyi okuduğunuzu, anladığınızı ve sözleşmede yazan şartlarla bağlı olduğunuzu kabul etmiş sayılırsınız.İşbu sözleşme taraflara sözleşme konusu site ile ilgili hak ve yükümlülükler yükler ve taraflar işbu sözleşmeyi kabul ettiklerinde bahsi geçen hak ve yükümlülükleri eksiksiz, doğru, zamanında, işbu sözleşmede talep edilen şartlar dahilinde yerine getireceklerini beyan ederler.",
                      ),
                      Divider(
                        color: Colors.grey[700],
                        height: 26,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, "/login"),
                        child: ListTile(
                          leading: const Icon(
                            Icons.login_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          title: Text(
                            register.t1.text.toString()==''?"Giriş Yap":"Çıkış Yap",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                          ),
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
    );
  }
}

menu_get(
  BuildContext context,
  IconData icon_1,
  String title,
  String baslik,
  String content,
) {
  return Container(
    child: InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileContent(
            title: baslik,
            title1: content,
          ),
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon_1,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: "Poppins",
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
        ),
      ),
    ),
  );
}
