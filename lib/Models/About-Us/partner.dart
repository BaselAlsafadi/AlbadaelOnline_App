class Partner {
  int id;
  String cover;
  String name;
  String link;
  bool? isactive;
  String local;

  Partner(
      {required this.id,
      required this.cover,
      required this.name,
      required this.link,
      required this.local,
      required this.isactive});

  factory Partner.fromJson(Map<String, dynamic> json) {
    return Partner(
      id: json['id'],
      cover: json['cover'],
      name: json['name'],
      link: json['link'].toString(),
      isactive: json['is_active'],
      local: json['local'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['name'] = this.name;
    data['link'] = this.link;
    data['local'] = this.local;
    data['is_active'] = this.isactive;
    return data;
  }
}
