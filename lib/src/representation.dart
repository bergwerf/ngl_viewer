part of ngl_viewer;

@JS()
class RepresentationElement extends Element {
  external Representation get repr;
}

@JS()
class Representation {
  external String get type;
  external RepresentationParameters getParameters();
  external void setParameters(RepresentationParameters v);
}

@JS()
@anonymous
class RepresentationParameters {
  external set name(String v);
  external set lazy(bool v);
  external set clipNear(num v);
  external set clipRadius(num v);
  //external set clipCenter: Vector3;
  external set flatShaded(bool v);
  external set opacity(num v);
  external set depthWrite(bool v);
  //external set side: BufferSide;
  external set wireframe(bool v);
  external set colorScheme(String v);
  //external set colorScale: string | number[];
  external set colorReverse(bool v);
  external set colorValue(num v);
  //external set colorDomain: number[];
  //external set colorMode: ColorMode;
  external set roughness(num v);
  external set metalness(num v);
  //external set diffuse: Color;
  external set diffuseInterior(bool v);
  external set useInteriorColor(bool v);
  //external set interiorColor: Color;
  external set interiorDarkening(num v);
  external set disablePicking(bool v);
  //external set matrix: Matrix;
  external set quality(String v);
  external set visible(bool v);
  external set color(v); // number | string | Color;
  external set sphereDetail(num v);
  external set radialSegments(num v);
  external set openEnded(bool v);
  external set disableImpostor(bool v);
}

@JS()
@anonymous
class StructureRepresentationParameters extends RepresentationParameters {
  external set radiusType(String v);
  external set radius(num v);
  external set scale(num v);
  external set assembly(String v);
}

@JS()
@anonymous
class BallAndStickRepresentationParameters
    extends StructureRepresentationParameters {
  external set aspectRatio(num v);
  external set lineOnly(bool v);
  external set lineWidth(num v);
  external set cylinderOnly(bool v);
  external set multipleBond(String mode); // 'off' | 'symmetric' | 'offset'
  external set bondSpacing(num v);
  external set bondScale(num v);
  external set linewidth(num v);

  // Not officially part of this class, but the NGL docs aren't clear about
  // where these should be defined and from the source code it looks like an
  // ad-hoc insertion.
  external set radiusSize(num v);
  external set radiusScale(num v);
}

@JS()
@anonymous
class HyperballRepresentationParameters
    extends BallAndStickRepresentationParameters {
  external set shrink(num v);
}
