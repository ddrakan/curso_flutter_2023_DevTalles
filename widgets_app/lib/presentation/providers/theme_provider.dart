import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';



//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Es un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);