import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _favourites = prefs
              .getStringList('ff_favourites')
              ?.map((x) {
                try {
                  return MovieStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _favourites;
    });
    _safeInit(() {
      _favs = prefs.getStringList('ff_favs')?.map(int.parse).toList() ?? _favs;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<MovieStruct> _favourites = [];
  List<MovieStruct> get favourites => _favourites;
  set favourites(List<MovieStruct> value) {
    _favourites = value;
    prefs.setStringList(
        'ff_favourites', value.map((x) => x.serialize()).toList());
  }

  void addToFavourites(MovieStruct value) {
    favourites.add(value);
    prefs.setStringList(
        'ff_favourites', _favourites.map((x) => x.serialize()).toList());
  }

  void removeFromFavourites(MovieStruct value) {
    favourites.remove(value);
    prefs.setStringList(
        'ff_favourites', _favourites.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFavourites(int index) {
    favourites.removeAt(index);
    prefs.setStringList(
        'ff_favourites', _favourites.map((x) => x.serialize()).toList());
  }

  void updateFavouritesAtIndex(
    int index,
    MovieStruct Function(MovieStruct) updateFn,
  ) {
    favourites[index] = updateFn(_favourites[index]);
    prefs.setStringList(
        'ff_favourites', _favourites.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFavourites(int index, MovieStruct value) {
    favourites.insert(index, value);
    prefs.setStringList(
        'ff_favourites', _favourites.map((x) => x.serialize()).toList());
  }

  List<int> _favs = [];
  List<int> get favs => _favs;
  set favs(List<int> value) {
    _favs = value;
    prefs.setStringList('ff_favs', value.map((x) => x.toString()).toList());
  }

  void addToFavs(int value) {
    favs.add(value);
    prefs.setStringList('ff_favs', _favs.map((x) => x.toString()).toList());
  }

  void removeFromFavs(int value) {
    favs.remove(value);
    prefs.setStringList('ff_favs', _favs.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromFavs(int index) {
    favs.removeAt(index);
    prefs.setStringList('ff_favs', _favs.map((x) => x.toString()).toList());
  }

  void updateFavsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    favs[index] = updateFn(_favs[index]);
    prefs.setStringList('ff_favs', _favs.map((x) => x.toString()).toList());
  }

  void insertAtIndexInFavs(int index, int value) {
    favs.insert(index, value);
    prefs.setStringList('ff_favs', _favs.map((x) => x.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
