class Banner {
  int id;
  String cover;
  String? title;
  String? desc;
  String? link;
  String local;
  bool? isactive;

  Banner(
      {required this.id,
      required this.cover,
      required this.title,
      required this.desc,
      required this.link,
      required this.isactive,
      required this.local});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['id'],
      cover: json['cover'],
      title: json['title'],
      desc: json['desc'],
      link: json['link'],
      isactive: json['is_active'],
      local: json['local'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['link'] = this.link;
    data['is_active'] = this.isactive;
    data['local'] = this.local;
    return data;
  }
}
