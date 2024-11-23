import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/widget/cr_text.dart';

@RoutePage()
class ComponentPage extends StatefulWidget {
  ComponentPage({Key? key}) : super(key: key);

  @override
  State<ComponentPage> createState() => _ComponentPageState();
}

class _ComponentPageState extends State<ComponentPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CRText(text: 'Component Page'),
        ],
      ),
    );
  }
}
