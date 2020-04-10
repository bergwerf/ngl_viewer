part of ngl_viewer;

/// NGL Stage
@JS()
class Stage {
  external Stage([String eid, StageParams params]);
  external Promise<Component> loadFile(path, [LoadFileParams params]);
  external void handleResize();
  external void removeAllComponents();
  external MouseControls get mouseControls;
}

/// Parameters for NGL.Stage
@anonymous
@JS()
class StageParams {
  external set overwritePreferences(bool v);
  external set theme(String v); // 'dark' | 'light'
  external set quality(String v);
  external set impostor(bool v);
  external set rotateSpeed(double v);
  external set zoomSpeed(double v);
  external set panSpeed(double v);
  external set clipNear(int v);
  external set clipFar(int v);
  external set clipDist(int v);
  external set fogNear(int v);
  external set fogFar(int v);
  external set lightColor(String v);
  external set ambientColor(String v);
  external set lightIntensity(double v);
  external set ambientIntensity(double v);
}

class RenderQuality {
  static const low = 'low';
  static const medium = 'medium';
  static const high = 'high';
}

/// Parameters for NGL.Stage.loadFile
@anonymous
@JS()
class LoadFileParams {
  external set defaultRepresentation(bool v);
  external set name(String v);
  external set ext(String v);
  external set compressed(bool v);
  external set firstModelOnly(bool v);
  external set asTrajectory(bool v);
  external set cAlphaOnly(bool v);
  external set reorderAtoms(bool v);
  external set dontAutoBond(bool v);
}
