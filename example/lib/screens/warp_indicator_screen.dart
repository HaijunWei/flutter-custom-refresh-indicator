import 'package:example/widgets/example_app_bar.dart';
import 'package:example/widgets/example_list.dart';
import 'package:flutter/material.dart';

import '../indicators/warp_indicator.dart';

class WarpIndicatorScreen extends StatefulWidget {
  const WarpIndicatorScreen({Key? key}) : super(key: key);

  @override
  _WarpIndicatorScreenState createState() => _WarpIndicatorScreenState();
}

class _WarpIndicatorScreenState extends State<WarpIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: const ExampleAppBar(),
      body: SafeArea(
        child: WarpIndicator(
          onRefresh: () => Future.delayed(const Duration(seconds: 2)),
          child: const ExampleList(),
        ),
      ),
    );
  }
}
