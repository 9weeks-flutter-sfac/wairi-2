import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Talk {
  String? id;
  String? content;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? authorId;
  String? parentId;
  String? catchUpId;
  String? mogakId;
  bool? isDeleted;
  int? temperature;
  Author? author;
  Talk({
    this.id,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.authorId,
    this.parentId,
    this.catchUpId,
    this.mogakId,
    this.isDeleted,
    this.temperature,
    this.author,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'content': content,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
      'authorId': authorId,
      'parentId': parentId,
      'catchUpId': catchUpId,
      'mogakId': mogakId,
      'isDeleted': isDeleted,
      'temperature': temperature,
      'author': author?.toMap(),
    };
  }

  factory Talk.fromMap(Map<String, dynamic> map) {
    return Talk(
      id: map['id'] != null ? map['id'] as String : null,
      content: map['content'] != null ? map['content'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      deletedAt: map['deletedAt'] != null ? map['deletedAt'] as String : null,
      authorId: map['authorId'] != null ? map['authorId'] as String : null,
      parentId: map['parentId'] != null ? map['parentId'] as String : null,
      catchUpId: map['catchUpId'] != null ? map['catchUpId'] as String : null,
      mogakId: map['mogakId'] != null ? map['mogakId'] as String : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
      temperature:
          map['temperature'] != null ? map['temperature'] as int : null,
      author: map['author'] != null
          ? Author.fromMap(map['author'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Talk.fromJson(String source) =>
      Talk.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Author {
  String? id;
  String? avatar;
  String? nickname;
  String? role;
  String? position;
  int? temperature;
  Author({
    this.id,
    this.avatar,
    this.nickname,
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

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      id: map['id'] != null ? map['id'] as String : null,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
      nickname: map['nickname'] != null ? map['nickname'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
      position: map['position'] != null ? map['position'] as String : null,
      temperature:
          map['temperature'] != null ? map['temperature'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) =>
      Author.fromMap(json.decode(source) as Map<String, dynamic>);
}
