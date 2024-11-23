import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class HisotryPage extends StatefulWidget {
  const HisotryPage({super.key});

  @override
  State<HisotryPage> createState() => _HisotryPageState();
}

class _HisotryPageState extends State<HisotryPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Center(
            child: Text('History Page'),
          ),
        ),
      ),
    );
  }
}
