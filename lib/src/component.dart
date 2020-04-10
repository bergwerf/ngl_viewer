part of ngl_viewer;

@JS()
class Component {
  external String get name;
  external List<RepresentationElement> get reprList;
  external void removeAllRepresentations();
  external dynamic addRepresentation(String type, params);
}
