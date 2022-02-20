class Team {
  int id;
  String name;
  String position;
  String photo;
  String? facebook;
  String? twitter;
  String? instagram;
  String? linkedin;
  bool? isactive;
  String? qot;
  String local;

  Team(
      {required this.id,
      required this.name,
      required this.position,
      required this.photo,
      required this.facebook,
      required this.twitter,
      required this.instagram,
      required this.linkedin,
      required this.isactive,
      required this.local,
      required this.qot});

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
        id: json['id'],
        name: json['name'],
        position: json['position'],
        photo: json['photo'],
        facebook: json['facebook'],
        twitter: json['twitter'],
        instagram: json['instagram'],
        linkedin: json['linkedin'],
        qot: json['qot'],
        local: json['local'],
        isactive: json['is_active']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['position'] = this.position;
    data['photo'] = this.photo;
    data['facebook'] = this.facebook;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    data['linkedin'] = this.linkedin;
    data['qot'] = this.qot;
    data['local'] = this.local;
    data['is_active'] = this.isactive;
    return data;
  }
}
