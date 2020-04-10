part of ngl_viewer;

@JS()
@anonymous
class MeasurementRepresentationParameters {
  external set color(String v);
  external set labelColor(int v);
  external set labelAttachment(String v);
  external set labelSize(num v);
  external set labelZOffset(num v);
  external set labelYOffset(num v);
  external set labelBorder(bool v);
  external set labelBorderColor(int v);
  external set labelBorderWidth(num v);
  external set lineOpacity(num v);
  external set linewidth(num v);
  external set opacity(num v);
  external set labelUnit(String v);
  external set arcVisible(bool v);
  external set planeVisible(bool v);
}

@JS()
external void setMeasurementDefaultParams(
    MeasurementRepresentationParameters params);
