import 'package:albadael/Models/Home/team.dart';
import 'about.dart';
import 'banner.dart';
import 'general.dart';
import 'links.dart';
import 'post.dart';
import 'pcategoraies.dart';
import 'protofolio.dart';
import 'services.dart';

class Data {
  late About about;
  late List<Banner> banner;
  late General general;
  late List<Link> link;
  late List<Post> post;
  late List<Team> team;
  late List<Pcategories> pcategories;
  late List<Portfolio> portfolio;
  late List<Service> service;

  Data(
      {required this.about,
      required this.banner,
      required this.general,
      required this.link,
      required this.post,
      required this.team,
      required this.pcategories,
      required this.portfolio,
      required this.service});

  Data.fromJson(Map<String, dynamic> json) {
    about = json['about'] = new About.fromJson(json['about']);
    if (json['banner'] != null) {
      banner = <Banner>[];
      json['banner'].forEach((v) {
        banner.add(Banner.fromJson(v));
      });
    }
    general = json['general'] = new General.fromJson(json['general']);
    if (json['link'] != null) {
      link = <Link>[];
      json['link'].forEach((v) {
        link.add(new Link.fromJson(v));
      });
    }

    if (json['post'] != null) {
      post = <Post>[];
      json['post'].forEach((v) {
        post.add(new Post.fromJson(v));
      });
    }
    if (json['team'] != null) {
      team = <Team>[];
      json['team'].forEach((v) {
        team.add(new Team.fromJson(v));
      });
    }
    if (json['pcategories'] != null) {
      pcategories = <Pcategories>[];
      json['pcategories'].forEach((v) {
        pcategories.add(new Pcategories.fromJson(v));
      });
    }
    if (json['portfolio'] != null) {
      portfolio = <Portfolio>[];
      json['portfolio'].forEach((v) {
        portfolio.add(new Portfolio.fromJson(v));
      });
    }
    if (json['service'] != null) {
      service = <Service>[];
      json['service'].forEach((v) {
        service.add(new Service.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // ignore: unnecessary_null_comparison
    if (this.about != null) {
      data['about'] = this.about.toJson();
    }
    // ignore: unnecessary_null_comparison
    if (this.banner != null) {
      data['banner'] = this.banner.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.general != null) {
      data['general'] = this.general.toJson();
    }
    // ignore: unnecessary_null_comparison
    if (this.link != null) {
      data['link'] = this.link.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.post != null) {
      data['post'] = this.post.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.team != null) {
      data['team'] = this.team.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.pcategories != null) {
      data['pcategories'] = this.pcategories.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.portfolio != null) {
      data['portfolio'] = this.portfolio.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_null_comparison
    if (this.service != null) {
      data['service'] = this.service.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
