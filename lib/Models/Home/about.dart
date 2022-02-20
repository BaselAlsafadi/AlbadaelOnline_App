class About {
  String title;
  String subject;
  String local;

  About({
    required this.title,
    required this.subject,
    required this.local,
  });

  factory About.fromJson(Map<String, dynamic> json) {
    return About(
      title: json['title'],
      subject: json['subject'],
      local: json['local'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subject'] = this.subject;
    data['local'] = this.local;
    return data;
  }
}
