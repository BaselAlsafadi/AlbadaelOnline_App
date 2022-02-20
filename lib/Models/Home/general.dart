class General {
  int id;
  bool? isactive;
  String title;
  String favicon;
  String logo;
  String address1;
  String address2;
  String phone;
  String email;
  String twitter;
  String facebook;
  String instagram;
  String linkedin;
  String footer;
  String gmaps;
  String? tawkto;
  String? disqus;
  String? gverification;
  String? sharethis;
  String keyword;
  String metaDesc;
  String local;

  General(
      {required this.id,
      required this.title,
      required this.favicon,
      required this.logo,
      required this.address1,
      required this.address2,
      required this.phone,
      required this.email,
      required this.twitter,
      required this.facebook,
      required this.instagram,
      required this.linkedin,
      required this.footer,
      required this.gmaps,
      required this.tawkto,
      required this.disqus,
      required this.gverification,
      required this.sharethis,
      required this.keyword,
      required this.metaDesc,
      required this.local,
      required this.isactive});

  factory General.fromJson(Map<String, dynamic> json) {
    return General(
        id: json['id'],
        title: json['title'],
        favicon: json['favicon'],
        logo: json['logo'],
        address1: json['address1'],
        address2: json['address2'],
        phone: json['phone'],
        email: json['email'],
        twitter: json['twitter'],
        facebook: json['facebook'],
        instagram: json['instagram'],
        linkedin: json['linkedin'],
        footer: json['footer'],
        gmaps: json['gmaps'],
        tawkto: json['tawkto'],
        disqus: json['disqus'],
        gverification: json['gverification'],
        sharethis: json['sharethis'],
        keyword: json['keyword'],
        metaDesc: json['meta_desc'],
        local: json['local'],
        isactive: json['is_active']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['favicon'] = this.favicon;
    data['logo'] = this.logo;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['twitter'] = this.twitter;
    data['facebook'] = this.facebook;
    data['instagram'] = this.instagram;
    data['linkedin'] = this.linkedin;
    data['footer'] = this.footer;
    data['gmaps'] = this.gmaps;
    data['tawkto'] = this.tawkto;
    data['disqus'] = this.disqus;
    data['gverification'] = this.gverification;
    data['sharethis'] = this.sharethis;
    data['keyword'] = this.keyword;
    data['meta_desc'] = this.metaDesc;
    data['local'] = this.local;
    data['is_active'] = this.isactive;

    return data;
  }
}
