@JS()
library ngl_viewer.promise;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS()
abstract class Promise<T> {}

Future<T> fut<T>(Promise<T> p) => promiseToFuture(p);
