class Post {
  int id;
  // ignore: non_constant_identifier_names
  int category_id;
  // ignore: non_constant_identifier_names
  int author_id;
  bool? isactive;
  String slug;
  String cover;
  int views;
  String status;
  String title;
  String? body;
  String keyword;
  String metaDesc;
  String local;

  Post({
    required this.id,
    // ignore: non_constant_identifier_names
    required this.category_id,
    // ignore: non_constant_identifier_names
    required this.author_id,
    required this.isactive,
    required this.title,
    required this.slug,
    required this.cover,
    required this.body,
    required this.keyword,
    required this.metaDesc,
    required this.views,
    required this.status,
    required this.local,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'],
        category_id: json['category_id'],
        author_id: json['author_id'],
        title: json['title'],
        slug: json['slug'],
        cover: json['cover'],
        body: json['body'],
        keyword: json['keyword'],
        metaDesc: json['meta_desc'],
        views: json['views'],
        status: json['status'],
        local: json['local'],
        isactive: json['is_active']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.category_id;
    data['author_id'] = this.author_id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['cover'] = this.cover;
    data['body'] = this.body;
    data['keyword'] = this.keyword;
    data['meta_desc'] = this.metaDesc;
    data['views'] = this.views;
    data['status'] = this.status;
    data['local'] = this.local;
    data['is_active'] = this.isactive;

    return data;
  }
}
