class Faq {
  int id;
  String question;
  String answer;
  bool? isactive;
  String local;

  Faq(
      {required this.id,
      required this.question,
      required this.answer,
      required this.local,
      required this.isactive});

  factory Faq.fromJson(Map<String, dynamic> json) {
    return Faq(
      id: json['id'],
      question: json['question'],
      answer: json['answer'],
      local: json['local'],
      isactive: json['is_active'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['is_active'] = this.isactive;
    data['local'] = this.local;
    return data;
  }
}
