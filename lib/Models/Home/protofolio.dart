class Portfolio {
  int id;
  // ignore: non_constant_identifier_names
  int pcategory_id;
  bool? isactive;
  String slug;
  String cover;
  String mobileImage;
  String link;
  String date;
  String name;
  String client;
  String desc;
  String local;

  Portfolio({
    required this.id,
    // ignore: non_constant_identifier_names
    required this.pcategory_id,
    required this.isactive,
    required this.slug,
    required this.cover,
    required this.mobileImage,
    required this.client,
    required this.link,
    required this.date,
    required this.name,
    required this.desc,
    required this.local,
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
        id: json['id'],
        pcategory_id: json['pcategory_id'],
        name: json['name'],
        slug: json['slug'],
        cover: json['cover'],
        client: json['client'],
        date: json['date'],
        desc: json['desc'],
        local: json['local'],
        isactive: json['is_active'],
        link: json['link'],
        mobileImage: json['mobileImage']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pcategory_id'] = this.pcategory_id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['cover'] = this.cover;
    data['client'] = this.client;
    data['date'] = this.date;
    data['desc'] = this.desc;
    data['local'] = this.local;
    data['is_active'] = this.isactive;
    data['link'] = this.link;
    data['mobileImage'] = this.mobileImage;
    return data;
  }
}
