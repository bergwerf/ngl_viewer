// Copyright (c) 2016, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by an AGPL-3.0-style license
// that can be found in the LICENSE file.

part of ngl_viewer;

/// See js/ngl/core.js in the ngl source repository.
/// Not all features are included here.

/// NGL revision
@JS('REVISION')
external String get revision;

/// NGL floating point precision epsilon
@JS('EPS')
external String get epsilon;

/// Use imposters for rendering.
external bool get disableImpostor;
external set disableImpostor(bool v);

/// Use Web Workers for computations.
external bool get useWorker;
external set useWorker(bool v);

/// Enable debugging.
external bool get debug;
external set debug(bool v);

/// NGL JS file path (used to run Web Workers)
external String get mainScriptFilePath;
external set mainScriptFilePath(String v);
