import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/design_system/colors_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/widget/button/cr_button2.dart';
import 'package:flutter_base_project/design/widget/button/cr_button2_fill_compose.dart';
import 'package:flutter_base_project/design/widget/button/cr_button2_outline_compose.dart';
import 'package:flutter_base_project/design/widget/button/cr_button_fab_compose.dart';
import 'package:flutter_base_project/design/widget/chip/cr_chip_compose.dart';
import 'package:flutter_base_project/design/widget/chip/cr_chip_selectable_compose.dart';
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
                  iconLeft:
                      CRButtonIcon.image('assets/images/logo_luarkampus.png'),
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

                // Chips Section
                CRText(
                  text: 'Chips',
                  style: CRTextStyleKey.headline4,
                ),
                const SizedBox(height: 16),

                // Fill Style - Normal
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.fill,
                  type: CRChipType.normal,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Fill Style - With Icon
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.fill,
                  type: CRChipType.withIcon,
                  icon: Icons.star,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Fill Style - With Close
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.fill,
                  type: CRChipType.withClose,
                  onPressed: () {},
                  onDeleted: () {},
                ),
                const SizedBox(height: 16),

                // Outline Style - Normal
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.outline,
                  type: CRChipType.normal,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Outline Style - With Icon
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.outline,
                  type: CRChipType.withIcon,
                  icon: Icons.star,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Outline Style - With Close
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.outline,
                  type: CRChipType.withClose,
                  onPressed: () {},
                  onDeleted: () {},
                ),
                const SizedBox(height: 16),

                // Ghost Style - Normal
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.ghost,
                  type: CRChipType.normal,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Ghost Style - With Icon
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.ghost,
                  type: CRChipType.withIcon,
                  icon: Icons.star,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Ghost Style - With Close
                CRChipCompose(
                  label: 'Chips',
                  style: CRChipStyle.ghost,
                  type: CRChipType.withClose,
                  onPressed: () {},
                  onDeleted: () {},
                ),
                const SizedBox(height: 16),

                // Selectable Chips Section
                CRText(
                  text: 'Selectable Chips',
                  style: CRTextStyleKey.headline4,
                ),
                const SizedBox(height: 16),

                // Example 1: Stories, Accounts, Tags (Light Mode)

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: CRChipSelectableGroup(
                      labels: const [
                        'Stories',
                        'Accounts',
                        'Tags',
                        'Stories',
                        'Accounts',
                        'Stories',
                        'Accounts',
                      ],
                      initialSelectedIndex: 1,
                      selectedConfig: const CRChipStateConfig(
                        fillColor: Color(0xFF2D9F8E),
                        borderColor: Color(0xFF2D9F8E),
                        textColor: Colors.white,
                      ),
                      unselectedConfig: const CRChipStateConfig(
                        fillColor: Colors.transparent,
                        borderColor: Color(0xFFE0E0E0),
                        textColor: Color(0xFF424242),
                      ),
                      onSelected: (index) {
                        print('Selected: ${[
                          'Stories',
                          'Accounts',
                          'Tags'
                        ][index]}');
                      },
                    )),
                const SizedBox(height: 16),

                CRText(
                  text: 'Selectable Chips Wrap Light Mode',
                  style: CRTextStyleKey.headline4,
                ),
                const SizedBox(height: 16),
                // Example 2: Urbanist, Roboto, Source Sans Pro (Light Mode)
                CRChipSelectableGroup(
                  labels: const [
                    'Urbanist',
                    'Roboto',
                    'Source Sans Pro',
                    'Roboto',
                    'Source Sans Pro',
                    'Roboto',
                    'Source Sans Pro'
                  ],
                  initialSelectedIndex: 0,
                  selectedConfig: const CRChipStateConfig(
                    fillColor: Color(0xFF2D9F8E),
                    borderColor: Color(0xFF2D9F8E),
                    textColor: Colors.white,
                  ),
                  unselectedConfig: const CRChipStateConfig(
                    fillColor: Colors.transparent,
                    borderColor: Color(0xFFE0E0E0),
                    textColor: Color(0xFF424242),
                  ),
                  onSelected: (index) {
                    print('Selected font: ${[
                      'Urbanist',
                      'Roboto',
                      'Source Sans Pro'
                    ][index]}');
                  },
                ),
                const SizedBox(height: 16),

                // Example 3: Dark Mode Configuration
                CRText(
                  text: 'Selectable Chips (Dark Mode)',
                  style: CRTextStyleKey.headline4,
                ),
                const SizedBox(height: 16),

                CRChipSelectableGroup(
                  labels: const ['Option 1', 'Option 2', 'Option 3'],
                  initialSelectedIndex: 0,
                  selectedConfig: const CRChipStateConfig(
                    fillColor: Color(0xFF2D9F8E),
                    borderColor: Color(0xFF2D9F8E),
                    textColor: Colors.white,
                  ),
                  unselectedConfig: const CRChipStateConfig(
                    fillColor: Colors.transparent,
                    borderColor: Color(0xFF424242),
                    textColor: Color(0xFFE0E0E0),
                  ),
                  onSelected: (index) {
                    print('Selected: Option ${index + 1}');
                  },
                ),
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
