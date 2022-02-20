class Pcategories {
  int id;
  String name;
  bool? isactive;
  String local;

  Pcategories(
      {required this.id,
      required this.name,
      required this.local,
      required this.isactive});

  factory Pcategories.fromJson(Map<String, dynamic> json) {
    return Pcategories(
      id: json['id'],
      name: json['name'],
      isactive: json['is_active'],
      local: json['local'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['is_active'] = this.isactive;
    data['local'] = this.local;
    return data;
  }
}
