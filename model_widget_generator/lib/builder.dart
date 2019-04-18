import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/generator.dart';


Builder modelWidget(BuilderOptions options) => SharedPartBuilder([ModelWidgetGenerator()],'model_widget');