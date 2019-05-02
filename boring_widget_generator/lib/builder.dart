import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/generator.dart';


Builder boringWidget(BuilderOptions options) => SharedPartBuilder([BoringWidgetGenerator()],'boring_widget');