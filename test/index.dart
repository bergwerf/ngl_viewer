// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by an AGPL-3.0-style license
// that can be found in the LICENSE file.

import 'package:ngl_viewer/ngl_viewer.dart' as ngl;

void main() {
  ngl.mainScriptFilePath = 'packages/ngl_viewer/ngl.embedded.min.js';

  var stageSettings = new ngl.StageParams(quality: ngl.RenderQuality.low);
  var loadFileParams = new ngl.LoadFileParams(defaultRepresentation: true);

  var stage = new ngl.Stage('ngl-viewer', stageSettings);
  stage.loadFile('rcsb://1blu', loadFileParams);
}
