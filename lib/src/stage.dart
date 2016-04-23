// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by an AGPL-3.0-style license
// that can be found in the LICENSE file.

part of ngl_viewer;

/// NGL Stage
@JS()
class Stage {
  external Stage([String eid, StageParams params]);
  external void loadFile(String path, [LoadFileParams params]);
}

/// Parameters for NGL.Stage
@anonymous
@JS()
class StageParams {
  external factory StageParams(
      {bool overwritePreferences,
      String theme,
      String quality,
      bool imposter,
      double rotateSpeed,
      double zoomSpeed,
      double panSpeed,
      int clipNear,
      int clipFar,
      int clipDist,
      int fogNear,
      int fogFar,
      String lightColor,
      String ambientColor,
      double lightIntensity,
      double ambientIntensity});
  external bool get overwritePreferences;
  external set overwritePreferences(bool v);
  external String get theme;
  external set theme(String v);
  external String get quality;
  external set quality(String v);
  external bool get imposter;
  external set imposter(bool v);
  external double get rotateSpeed;
  external set rotateSpeed(double v);
  external double get zoomSpeed;
  external set zoomSpeed(double v);
  external double get panSpeed;
  external set panSpeed(double v);
  external int get clipNear;
  external set clipNear(int v);
  external int get clipFar;
  external set clipFar(int v);
  external int get clipDist;
  external set clipDist(int v);
  external int get fogNear;
  external set fogNear(int v);
  external int get fogFar;
  external set fogFar(int v);
  external String get lightColor;
  external set lightColor(String v);
  external String get ambientColor;
  external set ambientColor(String v);
  external double get lightIntensity;
  external set lightIntensity(double v);
  external double get ambientIntensity;
  external set ambientIntensity(double v);
}

/// Possible values for StageParams.quality
class Quality {
  static const low = 'low';
  static const medium = 'medium';
  static const high = 'high';
}

/// Parameters for NGL.Stage.loadFile
@anonymous
@JS()
class LoadFileParams {
  external factory LoadFileParams({bool defaultRepresentation});
}
