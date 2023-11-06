import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Profile {
  String? id;
  String? nickname;
  String? bio;
  String? avatar;
  String? position;
  String? createdAt;
  String? updatedAt;
  String? urlGithub;
  String? urlBehance;
  String? urlBlog;
  String? urlWeb;
  String? urlEtc;
  String? urlPortfolio;
  String? role;
  String? badgeId;
  String? accountId;
  int? temperature;
  Profile({
    this.id,
    this.nickname,
    this.bio,
    this.avatar,
    this.position,
    this.createdAt,
    this.updatedAt,
    this.urlGithub,
    this.urlBehance,
    this.urlBlog,
    this.urlWeb,
    this.urlEtc,
    this.urlPortfolio,
    this.role,
    this.badgeId,
    this.accountId,
    this.temperature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nickname': nickname,
      'bio': bio,
      'avatar': avatar,
      'position': position,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'urlGithub': urlGithub,
      'urlBehance': urlBehance,
      'urlBlog': urlBlog,
      'urlWeb': urlWeb,
      'urlEtc': urlEtc,
      'urlPortfolio': urlPortfolio,
      'role': role,
      'badgeId': badgeId,
      'accountId': accountId,
      'temperature': temperature,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] != null ? map['id'] as String : null,
      nickname: map['nickname'] != null ? map['nickname'] as String : null,
      bio: map['bio'] != null ? map['bio'] as String : null,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
      position: map['position'] != null ? map['position'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      urlGithub: map['urlGithub'] != null ? map['urlGithub'] as String : null,
      urlBehance:
          map['urlBehance'] != null ? map['urlBehance'] as String : null,
      urlBlog: map['urlBlog'] != null ? map['urlBlog'] as String : null,
      urlWeb: map['urlWeb'] != null ? map['urlWeb'] as String : null,
      urlEtc: map['urlEtc'] != null ? map['urlEtc'] as String : null,
      urlPortfolio:
          map['urlPortfolio'] != null ? map['urlPortfolio'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
      badgeId: map['badgeId'] != null ? map['badgeId'] as String : null,
      accountId: map['accountId'] != null ? map['accountId'] as String : null,
      temperature:
          map['temperature'] != null ? map['temperature'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) =>
      Profile.fromMap(json.decode(source) as Map<String, dynamic>);
}
