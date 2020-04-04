part of ngl_viewer;

@JS()
class RepresentationElement extends Element {
  external Representation get repr;
}

@JS()
class Representation {
  external RepresentationParameters getParameters();
  external void setParameters(RepresentationParameters v);
}

@JS()
@anonymous
class RepresentationParameters {
  external bool get disablePicking;
  external set disablePicking(bool v);
}
