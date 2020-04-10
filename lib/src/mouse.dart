part of ngl_viewer;

@JS()
class MouseControls {
  external void add(String trigger, Function callback);
  external void clear();
}

// ignore: avoid_classes_with_only_static_members
@JS()
class MouseActions {
  external static dynamic get clipNearScroll;
  external static dynamic get focusScroll;
  external static dynamic get isolevelScroll;
  external static dynamic get measurePick;
  external static dynamic get movePick;
  external static dynamic get panAtomDrag;
  external static dynamic get panComponentDrag;
  external static dynamic get panDrag;
  external static dynamic get rotateComponentDrag;
  external static dynamic get rotateDrag;
  external static dynamic get tooltipPick;
  external static dynamic get zRotateDrag;
  external static dynamic get zoomDrag;
  external static dynamic get zoomFocusDrag;
  external static dynamic get zoomFocusScroll;
  external static dynamic get zoomScroll;
}
