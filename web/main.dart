// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by an AGPL-3.0-style license
// that can be found in the LICENSE file.

import 'package:ngl_viewer/promise.dart';
import 'package:ngl_viewer/ngl_viewer.dart' as ngl;

Future main() async {
  ngl.mainScriptFilePath = 'packages/ngl_viewer/ngl.js';

  final stageSettings = ngl.StageParams()
    ..rotateSpeed = 1
    ..clipDist = 2;

  final stage = ngl.Stage('ngl-viewer', stageSettings);

  // Mouse controls.
  stage.mouseControls.clear();
  stage.mouseControls.add('scroll', ngl.MouseActions.zoomScroll);
  stage.mouseControls.add('drag-left', ngl.MouseActions.rotateDrag);
  stage.mouseControls.add('clickPick-left', ngl.MouseActions.measurePick);

  // Measurement parameters.
  ngl.setMeasurementDefaultParams(ngl.MeasurementRepresentationParameters()
    ..color = '#88f'
    ..opacity = .7
    ..labelSize = 1
    ..labelYOffset = 0
    ..labelZOffset = 2
    ..labelColor = 0xffffff
    ..labelBorder = true
    ..labelBorderColor = 0x000000
    ..labelBorderWidth = .5
    ..arcVisible = true
    ..planeVisible = true);

  const resolver = 'http://cactus.nci.nih.gov/chemical/structure';
  const get3DMol = 'file?format=mol&get3d=true';

  final comp = await fut(stage.loadFile(
      '$resolver/caffeine/$get3DMol',
      ngl.LoadFileParams()
        ..defaultRepresentation = false
        ..ext = 'mol'));

  /*comp.addRepresentation(
      'ball+stick',
      ngl.BallAndStickRepresentationParameters()
        ..roughness = .65
        ..metalness = .25
        ..multipleBond = 'symmetric'
        ..aspectRatio = 3
        ..bondScale = .8
        ..bondSpacing = 2
        ..radiusType = 'vdw'
        ..radiusScale = .09);*/

  comp.addRepresentation(
      'hyperball',
      ngl.HyperballRepresentationParameters()
        ..roughness = .65
        ..metalness = .25
        ..shrink = .2
        ..radiusScale = .25);
}
