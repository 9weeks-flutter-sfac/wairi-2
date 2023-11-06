import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TalkTop {
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
  List? upProfiles;
  int? childrenLength;
  Author? author;
  TalkTop({
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
    this.upProfiles,
    this.childrenLength,
    this.author,
  });

  factory TalkTop.fromMap(Map<String, dynamic> map) {
    return TalkTop(
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
      upProfiles:
          map['upProfiles'] != null ? List.from(map['upProfiles']) : null,
      childrenLength:
          map['childrenLength'] != null ? map['childrenLength'] as int : null,
      author: map['author'] != null
          ? Author.fromMap(map['author'] as Map<String, dynamic>)
          : null,
    );
  }

  factory TalkTop.fromJson(String source) =>
      TalkTop.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Author {
  String? id;
  String? avatar;
  String? nickname;
  String? role;
  String? position;
  int? temperature;
  Badge? badge;
  Author({
    this.id,
    this.avatar,
    this.nickname,
    this.role,
    this.position,
    this.temperature,
    this.badge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'avatar': avatar,
      'nickname': nickname,
      'role': role,
      'position': position,
      'temperature': temperature,
      'badge': badge?.toMap(),
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
      badge: map['badge'] != null
          ? Badge.fromMap(map['badge'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) =>
      Author.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Badge {
  String? shortName;
  String? fgColor;
  String? bgColor;
  Badge({
    this.shortName,
    this.fgColor,
    this.bgColor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shortName': shortName,
      'fgColor': fgColor,
      'bgColor': bgColor,
    };
  }

  factory Badge.fromMap(Map<String, dynamic> map) {
    return Badge(
      shortName: map['shortName'] != null ? map['shortName'] as String : null,
      fgColor: map['fgColor'] != null ? map['fgColor'] as String : null,
      bgColor: map['bgColor'] != null ? map['bgColor'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Badge.fromJson(String source) =>
      Badge.fromMap(json.decode(source) as Map<String, dynamic>);
}
