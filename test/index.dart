// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by an AGPL-3.0-style license
// that can be found in the LICENSE file.

import 'package:ngl_viewer/ngl_viewer.dart' as ngl;

void main() {
  ngl.mainScriptFilePath = 'ngl.embedded.min.js';

  var stage = new ngl.Stage(
      'ngl-viewer',
      new ngl.StageParams(
          theme: 'light',
          rotateSpeed: 1.0,
          fogNear: 1,
          fogFar: 50,
          lightColor: '#aa0000',
          quality: ngl.Quality.high,
          overwritePreferences: true));

  stage.loadFile(
      'rcsb://1blu', new ngl.LoadFileParams(defaultRepresentation: true));
}
