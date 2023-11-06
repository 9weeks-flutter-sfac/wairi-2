import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CatchUpModel {
  CatchUpAuthor author;
  String? id;
  String? title;
  String? slug;
  String content;
  String? url;
  String? thumbnail;
  String? authorId;
  int? temperature;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? category;
  String? hashtag;
  int? up;
  CatchUpModel({
    required this.author,
    this.id,
    this.title,
    this.slug,
    required this.content,
    this.url,
    this.thumbnail,
    this.authorId,
    this.temperature,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.category,
    this.hashtag,
    this.up,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author.toMap(),
      'id': id,
      'title': title,
      'slug': slug,
      'content': content,
      'url': url,
      'thumbnail': thumbnail,
      'authorId': authorId,
      'temperature': temperature,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'category': category,
      'hashtag': hashtag,
    };
  }

  factory CatchUpModel.fromMap(Map<String, dynamic> map) {
    return CatchUpModel(
        author: CatchUpAuthor.fromMap(map['author'] as Map<String, dynamic>),
        id: map['id'] != null ? map['id'] as String : null,
        title: map['title'] != null ? map['title'] as String : null,
        slug: map['slug'] != null ? map['slug'] as String : null,
        content: map['content'] as String,
        url: map['url'] != null ? map['url'] as String : null,
        thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
        authorId: map['authorId'] != null ? map['authorId'] as String : null,
        temperature:
            map['temperature'] != null ? map['temperature'] as int : null,
        status: map['status'] != null ? map['status'] as String : null,
        createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
        updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
        category: map['category'] != null ? map['category'] as String : null,
        hashtag: map['hashtag'] != null ? map['hashtag'] as String : null,
        up: map['up'] != null ? map['up'] as int : null);
  }

  String toJson() => json.encode(toMap());

  factory CatchUpModel.fromJson(String source) =>
      CatchUpModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class CatchUpAuthor {
  String? id;
  String? avatar;
  String nickname;
  String? role;
  String? position;
  int? temperature;
  CatchUpAuthor({
    this.id,
    this.avatar,
    required this.nickname,
    this.role,
    this.position,
    this.temperature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'avatar': avatar,
      'nickname': nickname,
      'role': role,
      'position': position,
      'temperature': temperature,
    };
  }

  factory CatchUpAuthor.fromMap(Map<String, dynamic> map) {
    return CatchUpAuthor(
      id: map['id'] != null ? map['id'] as String : null,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
      nickname: map['nickname'] as String,
      role: map['role'] != null ? map['role'] as String : null,
      position: map['position'] != null ? map['position'] as String : null,
      temperature:
          map['temperature'] != null ? map['temperature'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatchUpAuthor.fromJson(String source) =>
      CatchUpAuthor.fromMap(json.decode(source) as Map<String, dynamic>);
}
