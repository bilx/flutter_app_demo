import 'package:flutter/material.dart';
import 'package:flutter_app_antrebate/di/locator.dart';
import 'package:provider/provider.dart';

///
/// 封装
///
class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T value, Widget child) builder;
  final Function(T) onModelReady;

  BaseView({@required this.builder, this.onModelReady});

  @override
  _BaseViewState createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
  T model = locator<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (_) => model,
      child: Consumer<T>(
        builder: widget.builder,
      ),
    );
  }
}
