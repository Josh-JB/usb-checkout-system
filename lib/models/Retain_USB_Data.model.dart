import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kRetainInfoConfigKey = "retainInfoConfig";
const String kRetainInfoDataKey = "retainInfoData";
const String kReedPeriod2Key = "Reed_Period_2";
const String kReedPeriod3Key = "Reed_Period_3";
const String kReedPeriod4Key = "Reed_Period_4";
const String kHammondPeriod2Key = "Hammond_Period_2";
const String kHammondPeriod4Key = "Hammond_Period_4";

class RetainDataModel extends ChangeNotifier {
  SharedPreferences prefs;

  bool _retainInfo = true;

  bool retainInfo() => _retainInfo;

  Map<String, dynamic> _ReedPeriod2 = {};
  Map<String, dynamic> _ReedPeriod3 = {};
  Map<String, dynamic> _ReedPeriod4 = {};
  Map<String, dynamic> _HammondPeriod2 = {};
  Map<String, dynamic> _HammondPeriod4 = {};

  RetainDataModel(this.prefs);

  Future<void> initialize() async {
    _retainInfo = prefs.getBool(kRetainInfoConfigKey) ?? true;

    Map<String, dynamic> parsedJsonData =
        jsonDecode(prefs.getString(kRetainInfoDataKey) ?? "{}");

    _ReedPeriod2 = parsedJsonData[kReedPeriod2Key] ?? {};
    _ReedPeriod3 = parsedJsonData[kReedPeriod3Key] ?? {};
    _ReedPeriod4 = parsedJsonData[kReedPeriod4Key] ?? {};
    _HammondPeriod2 = parsedJsonData[kHammondPeriod2Key] ?? {};
    _HammondPeriod4 = parsedJsonData[kHammondPeriod4Key] ?? {};
  }

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

  void setReedPeriod2(Map<String, dynamic> ReedPeriod2) {
    _ReedPeriod2 = ReedPeriod2;
    _writeData();
    notifyListeners();
  }

  void setReedPeriod3(Map<String, dynamic> ReedPeriod3) {
    _ReedPeriod3 = ReedPeriod3;
    _writeData();
    notifyListeners();
  }

  void setReedPeriod4(Map<String, dynamic> ReedPeriod4) {
    _ReedPeriod4 = ReedPeriod4;
    _writeData();
    notifyListeners();
  }

    void setHammondPeriod2(Map<String, dynamic> HammondPeriod2) {
    _HammondPeriod2 = HammondPeriod2;
    _writeData();
    notifyListeners();
  }

      void setHammondPeriod4(Map<String, dynamic> HammondPeriod4) {
    _HammondPeriod4 = HammondPeriod4;
    _writeData();
    notifyListeners();
  }

  // These are helper methods to more verbosely say we're resetting the data.
  void resetsetReedPeriod2() => setReedPeriod2({});
  void resetsetReedPeriod3() => setReedPeriod3({});
  void resetsetReedPeriod4() => setReedPeriod4({});
  void resetsetHammondPeriod2() => setHammondPeriod2({});
  void resetsetHammondPeriod4() => setHammondPeriod4({});

  void setRetainInfo(bool value) {
    _retainInfo = value;
    prefs.setBool(kRetainInfoConfigKey, _retainInfo);
    notifyListeners();
  }

  bool doesRetainInfo() => _retainInfo;

  /// Writes data to disk with specification for the TempFilePath provided.
  void _writeData() {
    prefs.setBool(kRetainInfoConfigKey, _retainInfo);
    prefs.setString(
        kRetainInfoDataKey,
        jsonEncode({
          kReedPeriod2Key: _ReedPeriod2,
          kReedPeriod3Key: _ReedPeriod3,
          kReedPeriod4Key: _ReedPeriod4,
          kHammondPeriod2Key: _HammondPeriod2,
          kHammondPeriod4Key: _HammondPeriod4
        }));
  }
}
