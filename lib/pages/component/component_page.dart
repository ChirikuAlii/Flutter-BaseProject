import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/text_style/text_style.dart';
import 'package:flutter_base_project/design/widget/cr_text.dart';
import 'package:flutter_base_project/design/widget/cr_text_field3.dart';
import 'package:flutter_base_project/design/widget/cr_text_field3_compose.dart';

@RoutePage()
class ComponentPage extends StatefulWidget {
  ComponentPage({Key? key}) : super(key: key);

  @override
  State<ComponentPage> createState() => _ComponentPageState();
}

class _ComponentPageState extends State<ComponentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildText(),
                _buildTextField1(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return CRText(text: 'Component Page', style: CRTextStyle.headline3);
  }

  Widget _buildTextField1() {
    return const CRTextField3Compose(
      hintText: 'Email',
      hintType: CRTextFieldHintType.staticLabel,
      message: 'Email is required',
    
    );
  }
}
