import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/design_system/colors_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/widget/button/cr_button2.dart';
import 'package:flutter_base_project/design/widget/button/cr_button2_fill_compose.dart';
import 'package:flutter_base_project/design/widget/button/cr_button2_outline_compose.dart';
import 'package:flutter_base_project/design/widget/button/cr_button_fab_compose.dart';
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
      backgroundColor: CRColorsKey.surfaceLightDarkDark1.dark,
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
                CRButton2(
                  text: 'Custom Outlined',
                  style: CRButtonStyle.filled,
                  // activeConfig: const CRButtonStateConfig(
                  //   fillColor: Color(0xFFEC4899),
                  //   textStyle: TextStyle(
                  //     color: Color(0xFFEC4899),
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  //   iconColor: Color(0xFFEC4899),
                  // ),
                  iconLeft: const CRButtonIcon.icon(Icons.favorite),
                  hoverEffect: CRButtonHoverEffect.brightness,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                CRButton2FillCompose(
                  text: 'Custom Filled',
                  iconLeft: const CRButtonIcon.icon(Icons.favorite),
                  hoverEffect: CRButtonHoverEffect.brightness,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                CRButton2OutlineCompose(
                  text: 'Custom Outlined',
                  iconLeft: const CRButtonIcon.icon(Icons.favorite),
                  hoverEffect: CRButtonHoverEffect.brightness,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                CRButton2FillCompose(
                  text: 'Custom Filled',
                  //socialMediaType: CRButtonSocialMediaType.x,
                  iconLeft: CRButtonIcon.image('assets/images/logo_luarkampus.png'),
                  iconSize: 56 * 0.4,
                  iconPosition: CRButtonIconPosition.leftLeft,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                // FAB Section
                CRText(
                  text: 'Floating Action Buttons',
                  style: CRTextStyleKey.headline4,
                ),
                const SizedBox(height: 16),
                
                // FAB Fill - Default
                   CRButtonFabCompose(
                      onPressed: () {},
                      icon: Icons.add,
                      style: CRButtonFabStyle.fill,
                    ),
                const SizedBox(height: 16),
               CRButtonFabCompose(
                      onPressed: () {},
                      icon: Icons.add,
                      style: CRButtonFabStyle.outline,
                    ),
                
              
                const SizedBox(height: 16),
                
               
                const SizedBox(height: 16),
                
               
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return CRText(text: 'Component Page', style: CRTextStyleKey.headline3);
  }

  Widget _buildTextField1() {
    return CRTextField3Compose(
      hintText: 'Email',
      hintType: CRTextFieldHintType.staticLabel,
      currentState: CRTextFieldState.error,
      style: CRTextFieldStyle.underline,
      message: 'Email is required',
    );
  }
}
