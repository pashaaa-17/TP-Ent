// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MovieStruct extends BaseStruct {
  MovieStruct({
    String? title,
    int? id,
    String? photoPath,
  })  : _title = title,
        _id = id,
        _photoPath = photoPath;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "photoPath" field.
  String? _photoPath;
  String get photoPath => _photoPath ?? '';
  set photoPath(String? val) => _photoPath = val;

  bool hasPhotoPath() => _photoPath != null;

  static MovieStruct fromMap(Map<String, dynamic> data) => MovieStruct(
        title: data['title'] as String?,
        id: castToType<int>(data['id']),
        photoPath: data['photoPath'] as String?,
      );

  static MovieStruct? maybeFromMap(dynamic data) =>
      data is Map ? MovieStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'id': _id,
        'photoPath': _photoPath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'photoPath': serializeParam(
          _photoPath,
          ParamType.String,
        ),
      }.withoutNulls;

  static MovieStruct fromSerializableMap(Map<String, dynamic> data) =>
      MovieStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        photoPath: deserializeParam(
          data['photoPath'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MovieStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MovieStruct &&
        title == other.title &&
        id == other.id &&
        photoPath == other.photoPath;
  }

  @override
  int get hashCode => const ListEquality().hash([title, id, photoPath]);
}

MovieStruct createMovieStruct({
  String? title,
  int? id,
  String? photoPath,
}) =>
    MovieStruct(
      title: title,
      id: id,
      photoPath: photoPath,
    );
