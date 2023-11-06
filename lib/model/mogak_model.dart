import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class MogakModel {
  String? id;
  String? title;
  String? content;
  bool? isDeleted;
  int? maxMember;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? authorId;
  String? hashtag;
  String? visiblityStatus;
  int? temperature;
  Author? author;
  List<AppliedProfiles>? appliedProfiles;
  MogakModel({
    this.id,
    this.title,
    this.content,
    this.isDeleted,
    this.maxMember,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.authorId,
    this.hashtag,
    this.visiblityStatus,
    this.temperature,
    this.author,
    this.appliedProfiles,
  });

  factory MogakModel.fromMap(Map<String, dynamic> map) {
    return MogakModel(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      content: map['content'] != null ? map['content'] as String : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
      maxMember: map['maxMember'] != null ? map['maxMember'] as int : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      deletedAt: map['deletedAt'] != null ? map['deletedAt'] as String : null,
      authorId: map['authorId'] != null ? map['authorId'] as String : null,
      hashtag: map['hashtag'] != null ? map['hashtag'] as String : null,
      visiblityStatus: map['visiblityStatus'] != null
          ? map['visiblityStatus'] as String
          : null,
      temperature:
          map['temperature'] != null ? map['temperature'] as int : null,
      author: map['author'] != null
          ? Author.fromMap(map['author'] as Map<String, dynamic>)
          : null,
      appliedProfiles: map['appliedProfiles'] != null
          ? List<AppliedProfiles>.from(
              (map['appliedProfiles'] as List<dynamic>).map<AppliedProfiles?>(
                (x) => AppliedProfiles.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  factory MogakModel.fromJson(String source) =>
      MogakModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Author {
  String? id;
  String? avatar;
  String nickname;
  String? role;
  String? position;
  int? temperature;
  Author({
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

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
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

  factory Author.fromJson(String source) =>
      Author.fromMap(json.decode(source) as Map<String, dynamic>);
}

class AppliedProfiles {
  String? id;
  String? avatar;
  String? nickname;
  String? role;
  String? position;
  int? temperature;
  AppliedProfiles({
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

  factory AppliedProfiles.fromMap(Map<String, dynamic> map) {
    return AppliedProfiles(
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

  factory AppliedProfiles.fromJson(String source) =>
      AppliedProfiles.fromMap(json.decode(source) as Map<String, dynamic>);
}
