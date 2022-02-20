import 'package:albadael/Models/About-Us/partner.dart';
import 'about_us.dart';
import 'faq.dart';

class Data {
  late List<Faq> faq;
  late List<Partner> partner;
  late AboutUs aboutus;

  Data({required this.faq, required this.aboutus, required this.partner});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['faq'] != null) {
      faq = <Faq>[];
      json['faq'].forEach((v) {
        faq.add(new Faq.fromJson(v));
      });
    }
    if (json['partner'] != null) {
      partner = <Partner>[];
      json['partner'].forEach((v) {
        partner.add(new Partner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    // ignore: unnecessary_null_comparison
    if (this.faq != null) {
      data['faq'] = this.faq.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.partner != null) {
      data['partner'] = this.partner.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
