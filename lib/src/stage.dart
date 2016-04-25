// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by an AGPL-3.0-style license
// that can be found in the LICENSE file.

part of ngl_viewer;

/// NGL Stage
@JS()
class Stage {
  /// Constructor
  external Stage([String eid, StageParams params]);

  /// Loads a file from [path]. Creates a corresponding component and returns a
  /// [Promise]. The path argument can be a URL string, a [File] object or a
  /// [Blob] object. The params argument is passed to the [autoLoad] function.
  external dynamic loadFile(dynamic path, [LoadFileParams params]);
}

/// Parameters for NGL.Stage
@anonymous
@JS()
class StageParams {
  /// Constructor
  external factory StageParams(
      {bool overwritePreferences: true,
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

  /// Overwrite localStorage preferences with these preferences.
  /// True by default (it is false by default in the official NGL release)
  external bool get overwritePreferences;
  external set overwritePreferences(bool v);

  /// NGL theme (either `'dark'` or `'light'`)
  external String get theme;
  external set theme(String v);

  /// Render quality
  ///
  /// Controls how many vertices are used to render geometries such as cartoons.
  /// Note that spheres are ray-cased when `EXT_frag_depth` is availabe.
  /// Use values from [RenderQuality].
  external String get quality;
  external set quality(String v);

  external bool get impostor;
  external set impostor(bool v);

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
class RenderQuality {
  static const low = 'low';
  static const medium = 'medium';
  static const high = 'high';
}

/// Parameters for NGL.Stage.loadFile
@anonymous
@JS()
class LoadFileParams {
  /// Constructor
  external factory LoadFileParams(
      {bool defaultRepresentation,
      String name,
      String ext,
      bool compressed,
      bool firstModelOnly,
      bool asTrajectory,
      bool cAlphaOnly,
      bool reorderAtoms,
      bool dontAutoBond});

  /// Add a set of default representations after loading, defaults to false.
  external bool get defaultRepresentation;
  external set defaultRepresentation(bool v);

  /// Name given to the loaded components. Useful for methods
  /// [getComponentsByName], [getRepresentationsByName] and [getAnythingByName].
  external String get name;
  external set name(String v);

  /// File extension to identify file type. By default determined from path or
  /// file name but can be set explicitly
  external String get ext;
  external set ext(String v);

  /// Flag to identify compression type (if any, set to false for none). By
  /// default determined from path or file name but can be set explicitly.
  external bool get compressed;
  external set compressed(bool v);

  /// Load only the first model of a structure file. Defaults to false.
  external bool get firstModelOnly;
  external set firstModelOnly(bool v);

  /// Load the structure file as a trajectory: first model as structure and the
  /// remaining models as coordinate frames. Defaults to false.
  external bool get asTrajectory;
  external set asTrajectory(bool v);

  /// Load only the c-alpha atoms of structure file. Defaults to false.
  external bool get cAlphaOnly;
  external set cAlphaOnly(bool v);

  /// Reorder atoms (based on modelindex, chainname, resno) to help correctly
  /// build the structure-model-chain-residue hierarchy. Defaults to false.
  external bool get reorderAtoms;
  external set reorderAtoms(bool v);

  /// Prevent automatic bond determination. Defaults to false.
  external bool get dontAutoBond;
  external set dontAutoBond(bool v);
}
