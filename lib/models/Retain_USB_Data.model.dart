import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

const String retainInfoSettingsFileName = "retain.settings.json";

enum TempFilePath { ReedPeriod2, ReedPeriod3, ReedPeriod4, HammondPeriod2, HammondPeriod4, general}

extension TempFileNamesExtension on TempFilePath {
  String get value {
    switch (this) {
      case TempFilePath.ReedPeriod2:
        return "temp.Reed_Period_2.json";

      case TempFilePath.ReedPeriod3:
        return "temp.Reed_Period_3.json";

      case TempFilePath.ReedPeriod4:
        return "temp.Reed_Period_4.json";

      case TempFilePath.HammondPeriod2:
        return "temp.Hammond_Period_2.json";

      case TempFilePath.HammondPeriod4:
        return "temp.Hammond_Period_4.json";

      case TempFilePath.general:
        return "retain.settings.json";
    }
  }
}

class RetainUSBDataModel extends ChangeNotifier {
  bool _retainInfo = true;

  bool retainInfo() => _retainInfo;

  Map<String, dynamic> _ReedPeriod2;
  Map<String, dynamic> _ReedPeriod3;
  Map<String, dynamic> _ReedPeriod4;
  Map<String, dynamic> _HammondPeriod2;
  Map<String, dynamic> _HammondPeriod4;

  // For all accessors we check if the user cares to retain information on
  // incomplete submissions. If the user does _not_ plan to retain the
  // information we just return an empty Map with String indices
  Map<String, dynamic> ReedPeriod2() =>
      _retainInfo ? _ReedPeriod2 : <String, dynamic>{};
  Map<String, dynamic> ReedPeriod3() =>
      _retainInfo ? _ReedPeriod3 : <String, dynamic>{};
  Map<String, dynamic> ReedPeriod4() =>
      _retainInfo ? _ReedPeriod4 : <String, dynamic>{};
  Map<String, dynamic> HammondPeriod2() =>
      _retainInfo ? _HammondPeriod2 : <String, dynamic>{};
  Map<String, dynamic> HammondPeriod4() =>
      _retainInfo ? _HammondPeriod4 : <String, dynamic>{};

  Future<void> setReedPeriod2(Map<String, dynamic> ReedPeriod2) async {
    _ReedPeriod2 = ReedPeriod2;
    await _writeData(TempFilePath.ReedPeriod2, _ReedPeriod2);
  }

  Future<void> setReedPeriod3(Map<String, dynamic> ReedPeriod3) async {
    _ReedPeriod3 = ReedPeriod3;
    await _writeData(TempFilePath.ReedPeriod3, _ReedPeriod3);
  }

  void setReedPeriod4(Map<String, dynamic> ReedPeriod4) {
    _ReedPeriod4 = ReedPeriod4;
    _writeData(TempFilePath.ReedPeriod4, _ReedPeriod4);
  }

  Future<void> setHammondPeriod2(Map<String, dynamic> HammondPeriod2) async {
    _HammondPeriod2 = HammondPeriod2;
    await _writeData(TempFilePath.HammondPeriod2, _HammondPeriod2);
  }

  Future<void> setHammondPeriod4(Map<String, dynamic> HammondPeriod4) async {
    _HammondPeriod4 = HammondPeriod4;
    await _writeData(TempFilePath.HammondPeriod4, _HammondPeriod4);
  }



  // These are helper methods to more verbosely say we're resetting the data.
  void resetReedPeriod2() => setReedPeriod2({});
  void resetReedPeriod3() => setReedPeriod3({});
  void resetReedPeriod4() => setReedPeriod4({});
  void resetHammondPeriod2() => setReedPeriod4({});
  void resetHammondPeriod4() => setReedPeriod4({});

  void setRetainInfo(bool value) {
    _retainInfo = value;
    _writeData(TempFilePath.general, settingsToJson());
    notifyListeners();
  }

  RetainUSBDataModel(
      {bool? retainInfo,
  Map<String, dynamic>? ReedPeriod2,
  Map<String, dynamic>? ReedPeriod3,
  Map<String, dynamic>? ReedPeriod4,
  Map<String, dynamic>? HammondPeriod2,
  Map<String, dynamic>? HammondPeriod4,
})
      : _ReedPeriod2 = ReedPeriod2 ?? {},
        _ReedPeriod3 = ReedPeriod3 ?? {},
        _ReedPeriod4 = ReedPeriod4 ?? {},
        _HammondPeriod2 = HammondPeriod2 ?? {},
        _HammondPeriod4 = HammondPeriod4 ?? {},
        _retainInfo = retainInfo ?? false;

  /// fromSettingsJson expects to have the initial data from the retain.settings.json
  /// but to check for the existence of other data.
  factory RetainUSBDataModel.fromJsons(Map<String, Map<String, dynamic>> json) {
    // Handle Settings State before raw form data
    Map<String, dynamic> assumedSettings = json['settings'] ?? {};
    bool assumedRetainInfo = assumedSettings['retainInfo'] ?? false;

    Map<String, dynamic> assumedReedPeriod2 = json['Reed_Period_2'] ?? {};
    Map<String, dynamic> assumedReedPeriod3 = json['Reed_Period_3'] ?? {};
    Map<String, dynamic> assumedReedPeriod4 = json['Reed_Period_4'] ?? {};
    Map<String, dynamic> assumedHammondPeriod2 = json['Hammond_Period_2'] ?? {};
    Map<String, dynamic> assumedHammondPeriod4 = json['Hammond_Period_4'] ?? {};

    return RetainUSBDataModel(
        retainInfo: assumedRetainInfo,
        ReedPeriod2: assumedReedPeriod2,
        ReedPeriod3: assumedReedPeriod3,
        ReedPeriod4: assumedReedPeriod4,
        HammondPeriod2: assumedHammondPeriod2,
        HammondPeriod4: assumedHammondPeriod4,);
  }

  Map<String, dynamic> settingsToJson() {
    return {'retainInfo': _retainInfo};
  }

  bool doesRetainInfo() => _retainInfo;

  /// Writes data to disk with specification for the TempFilePath provided.
  Future<void> _writeData(TempFilePath file, Map<String, dynamic> data) async {
    final String path = (await getApplicationSupportDirectory()).path;
    final String jsonPath = p.join(path, file.value);
    final File jsonFile = File(jsonPath); 

    jsonFile.writeAsStringSync(jsonEncode(data));
  }
}

/// Handles reading data from a specified TempFilePath file. This is agnostic
/// to what data is actually in the file and only cares that the file exists
/// or returns an empty Map object.
Future<Map<String, dynamic>> getDataFromJsonFile(TempFilePath filePath) async {
  final String path = (await getApplicationSupportDirectory()).path;
  final String jsonPath = p.join(path, filePath.value);
  final File jsonFile = File(jsonPath);

  // null check to make sure we're not opening a file that doesn't exist.
  if (!jsonFile.existsSync()) {
    return {};
  }

  return jsonDecode(await jsonFile.readAsString());
}

/// Creates an initial RetainInfoModel we can use for Providers
/// It will pull data from the settings and temp data files in order
/// to populate the values of the Model.
Future<RetainUSBDataModel> getInitialRetainModel() async {
  return RetainUSBDataModel.fromJsons({
    'settings': await getDataFromJsonFile(TempFilePath.general),
    'Reed_Period_2': await getDataFromJsonFile(TempFilePath.ReedPeriod2),
    'Reed_Period_3': await getDataFromJsonFile(TempFilePath.ReedPeriod3),
    'Reed_Period_4': await getDataFromJsonFile(TempFilePath.ReedPeriod4),
    'Hammond_Period_2': await getDataFromJsonFile(TempFilePath.HammondPeriod2),
    'Hammond_Period_4': await getDataFromJsonFile(TempFilePath.HammondPeriod4),
  });
}
