class AboutUs {
  bool? isactive;
  String title;
  String subject;
  String desc;
  String local;

  AboutUs(
      {required this.isactive,
      required this.title,
      required this.subject,
      required this.desc,
      required this.local});

  factory AboutUs.fromJson(Map<String, dynamic> json) {
    return AboutUs(
        isactive: json['is_active'],
        title: json['title'],
        subject: json['subject'],
        desc: json['desc'],
        local: json['local']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isactive'] = this.isactive;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['local'] = this.local;
    data['subject'] = this.subject;
    return data;
  }
}
