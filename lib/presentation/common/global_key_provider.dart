import 'package:flutter/material.dart';

class GlobalKeyProvider<T extends State<StatefulWidget>>
    extends InheritedWidget {
  const GlobalKeyProvider({
    super.key,
    required this.globalKey,
    required this.child,
  }) : super(child: child);

  @override
  final Widget child;

  final GlobalKey<T> globalKey;

  static GlobalKeyProvider<T>? of<T extends State<StatefulWidget>>(
    BuildContext context,
  ) {
    return context.dependOnInheritedWidgetOfExactType<GlobalKeyProvider<T>>();
  }

  @override
  bool updateShouldNotify(GlobalKeyProvider oldWidget) {
    return oldWidget.globalKey != globalKey;
  }
}
