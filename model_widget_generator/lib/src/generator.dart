import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:model_widget/model_widget.dart';
import 'package:source_gen/source_gen.dart';

class ModelWidgetGenerator extends GeneratorForAnnotation<ModelWidget> {
  @override
  FutureOr<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    return _generateWidgetSource(element);
  }

  String _generateWidgetSource(Element element) {
    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    String sourceBuilder = "class ${visitor.className}Widget extends StatelessWidget{\n";

    sourceBuilder += "${visitor.className}Widget (";

    String parametersBuilder = "";
    visitor.fields.forEach((name,type) => parametersBuilder += "this.$name,");
    sourceBuilder += parametersBuilder;
    sourceBuilder += ");\n";

    visitor.fields.forEach((name,type) => sourceBuilder += "final $type $name;");

    sourceBuilder += "@override\n";
    sourceBuilder += "Widget build(BuildContext context) => Column(\n";
    sourceBuilder += "children:<Widget>[";
    String textWidgets = "";
    visitor.fields.forEach((name,type)=> textWidgets += "Text(\"$name \$$name\"),");
    sourceBuilder += "$textWidgets\n";
    sourceBuilder += "]";
    sourceBuilder += ");\n";
    sourceBuilder += "}\n";

    return sourceBuilder;
  }
}

class ModelVisitor extends SimpleElementVisitor {
  DartType className;
  Map<String, DartType> fields = Map();

  @override
  visitConstructorElement(ConstructorElement element) {
    className = element.type.returnType;
    return super.visitConstructorElement(element);
  }

  @override
  visitFieldElement(FieldElement element) {
    fields[element.name] = element.type;

    return super.visitFieldElement(element);
  }
}
