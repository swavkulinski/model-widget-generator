import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:boring_widget/boring_widget.dart';
import 'package:source_gen/source_gen.dart';

class BoringWidgetGenerator extends GeneratorForAnnotation<BoringWidget> {
  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    return _generateWidgetSource(element);
  }

  String _generateWidgetSource(Element element) {
        return "// Generator works!";
  }
}
