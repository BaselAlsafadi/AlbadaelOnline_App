class Link {
  int id;
  String name;
  String link;
  bool? isactive;
  String local;

  Link(
      {required this.id,
      required this.name,
      required this.link,
      required this.isactive,
      required this.local});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      id: json['id'],
      name: json['name'],
      link: json['link'],
      isactive: json['is_active'],
      local: json['local'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['is_active'] = this.isactive;
    data['local'] = this.local;
    return data;
  }
}
