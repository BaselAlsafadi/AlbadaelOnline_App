class Service {
  int id;
  bool? isactive;
  String icon;
  String title;
  String slug;
  String quote;
  String desc;
  String local;

  Service(
      {required this.id,
      required this.icon,
      required this.title,
      required this.slug,
      required this.quote,
      required this.desc,
      required this.local,
      required this.isactive});

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      icon: json['icon'],
      title: json['title'],
      slug: json['slug'],
      quote: json['quote'],
      desc: json['desc'],
      local: json['local'],
      isactive: json['is_active'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['quote'] = this.quote;
    data['desc'] = this.desc;
    data['local'] = this.local;
    data['is_active'] = this.isactive;
    return data;
  }
}
