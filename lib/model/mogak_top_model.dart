import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MogakTopModel {
  String id;
  String title;
  String content;
  bool isDeleted;
  int maxMember;
  String createdAt;
  String updatedAt;
  String? deletedAt;
  String authorId;
  String hashtag;
  String visiblityStatus;
  int temperature;
  List upProfiles;
  Author author;
  List<AppliedProfiles> appliedProfiles;
  MogakTopModel({
    required this.id,
    required this.title,
    required this.content,
    required this.isDeleted,
    required this.maxMember,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.authorId,
    required this.hashtag,
    required this.visiblityStatus,
    required this.temperature,
    required this.upProfiles,
    required this.author,
    required this.appliedProfiles,
  });

  factory MogakTopModel.fromMap(Map<String, dynamic> map) {
    return MogakTopModel(
        author: Author.fromMap(map['author'] as Map<String, dynamic>),
        appliedProfiles: List<AppliedProfiles>.from(
          (map['appliedProfiles'] as List<dynamic>).map<AppliedProfiles>(
            (x) => AppliedProfiles.fromMap(x as Map<String, dynamic>),
          ),
        ),
        id: map['id'] as String,
        title: map['title'] as String,
        content: map['content'] as String,
        isDeleted: map['isDeleted'] as bool,
        maxMember: map['maxMember'] as int,
        createdAt: map['createdAt'] as String,
        updatedAt: map['updatedAt'] as String,
        deletedAt: map['deletedAt'] != null ? map['deletedAt'] as String : null,
        authorId: map['authorId'] as String,
        hashtag: map['hashtag'] as String,
        visiblityStatus: map['visiblityStatus'] as String,
        temperature: map['temperature'] as int,
        upProfiles: List.from(
          (map['upProfiles'] as List),
        ));
  }

  factory MogakTopModel.fromJson(String source) =>
      MogakTopModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Author {
  String id;
  String? avatar;
  String nickname;
  String role;
  String position;
  int temperature;
  Badge? badge;
  Author({
    required this.id,
    this.avatar,
    required this.nickname,
    required this.role,
    required this.position,
    required this.temperature,
    required this.badge,
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
      id: map['id'] as String,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
      nickname: map['nickname'] as String,
      role: map['role'] as String,
      position: map['position'] as String,
      temperature: map['temperature'] as int,
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
  String shortName;
  String fgColor;
  String bgColor;
  Badge({
    required this.shortName,
    required this.fgColor,
    required this.bgColor,
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
      shortName: map['shortName'] as String,
      fgColor: map['fgColor'] as String,
      bgColor: map['bgColor'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Badge.fromJson(String source) =>
      Badge.fromMap(json.decode(source) as Map<String, dynamic>);
}

class AppliedProfiles {
  String id;
  String? avatar;
  String nickname;
  String role;
  String position;
  int temperature;
  Badge? badge;
  AppliedProfiles({
    required this.id,
    this.avatar,
    required this.nickname,
    required this.role,
    required this.position,
    required this.temperature,
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

  factory AppliedProfiles.fromMap(Map<String, dynamic> map) {
    return AppliedProfiles(
      id: map['id'] as String,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
      nickname: map['nickname'] as String,
      role: map['role'] as String,
      position: map['position'] as String,
      temperature: map['temperature'] as int,
      badge: map['badge'] != null
          ? Badge.fromMap(map['badge'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppliedProfiles.fromJson(String source) =>
      AppliedProfiles.fromMap(json.decode(source) as Map<String, dynamic>);
}
