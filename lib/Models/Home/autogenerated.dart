import 'data.dart';

class Autogenerated {
  String status;
  String? statusNum;
  String? error;
  Data data;
  // bool? fromcahse = false;

  Autogenerated({
    required this.status,
    required this.statusNum,
    required this.error,
    required this.data,
    // this.fromcahse,
  });

  factory Autogenerated.fromJson(Map<String, dynamic> json) {
    return Autogenerated(
        status: json['status'],
        statusNum: json['statusNum'],
        error: json['error'],
        data: json['data'] = new Data.fromJson(json['data']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['statusNum'] = this.statusNum;
    data['error'] = this.error;
    data['data'] = this.data.toJson();
    return data;
  }
}