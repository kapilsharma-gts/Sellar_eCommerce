import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/widget_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Sellar eCommerce',
      theme: ThemeData(
          primaryColor: Color(0xFF283C63),
          iconTheme: IconThemeData(color: Colors.black.withOpacity(0.4)),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFE7E9F5))),
      home: WidgetTree(),
    );
  }
}
