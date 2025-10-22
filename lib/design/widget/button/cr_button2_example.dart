import 'package:flutter/material.dart';
import 'cr_button2.dart';

/// Example page untuk mendemonstrasikan berbagai konfigurasi CRButton2
class CRButton2Example extends StatelessWidget {
  const CRButton2Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRButton2 Examples'),
        backgroundColor: const Color(0xFF2D9F8E),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Basic Buttons',
              [
                // Filled button
                CRButton2(
                  text: 'Button',
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Outlined button
                CRButton2(
                  text: 'Button',
                  style: CRButtonStyle.outlined,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Disabled button
                const CRButton2(
                  text: 'Button',
                  onPressed: null,
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Buttons with Icons - Center Position',
              [
                // Icon left - center
                CRButton2(
                  text: 'Button',
                  iconLeft: CRButtonIcon.icon(Icons.add),
                  iconPosition: CRButtonIconPosition.centerLeft,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Icon right - center
                CRButton2(
                  text: 'Button',
                  iconRight: CRButtonIcon.icon(Icons.arrow_forward),
                  iconPosition: CRButtonIconPosition.centerRight,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Both icons - center
                CRButton2(
                  text: 'Button',
                  iconLeft: CRButtonIcon.icon(Icons.add),
                  iconRight: CRButtonIcon.icon(Icons.arrow_forward),
                  iconPosition: CRButtonIconPosition.centerLeft,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Buttons with Icons - Edge Positions',
              [
                // leftLeft - icon di ujung kiri
                CRButton2(
                  text: 'Button',
                  iconLeft: CRButtonIcon.icon(Icons.menu),
                  iconPosition: CRButtonIconPosition.leftLeft,
                  width: double.infinity,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // rightLeft - icon kiri text, posisi ujung kanan
                CRButton2(
                  text: 'Button',
                  iconLeft: CRButtonIcon.icon(Icons.add),
                  iconPosition: CRButtonIconPosition.rightLeft,
                  width: double.infinity,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // rightRight - icon kanan text, posisi ujung kanan
                CRButton2(
                  text: 'Button',
                  iconRight: CRButtonIcon.icon(Icons.arrow_forward),
                  iconPosition: CRButtonIconPosition.rightRight,
                  width: double.infinity,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // leftRight - icon kanan text, posisi ujung kiri
                CRButton2(
                  text: 'Button',
                  iconRight: CRButtonIcon.icon(Icons.arrow_forward),
                  iconPosition: CRButtonIconPosition.leftRight,
                  width: double.infinity,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Different Hover Effects',
              [
                // Scale effect
                CRButton2(
                  text: 'Scale Effect',
                  hoverEffect: CRButtonHoverEffect.scale,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Brightness effect (default)
                CRButton2(
                  text: 'Brightness Effect',
                  hoverEffect: CRButtonHoverEffect.brightness,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Elevation effect
                CRButton2(
                  text: 'Elevation Effect',
                  hoverEffect: CRButtonHoverEffect.elevation,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // No effect
                CRButton2(
                  text: 'No Effect',
                  hoverEffect: CRButtonHoverEffect.none,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Custom Colors & Styles',
              [
                // Custom filled button
                CRButton2(
                  text: 'Custom Filled',
                  style: CRButtonStyle.filled,
                  activeConfig: const CRButtonStateConfig(
                    fillColor: Color(0xFF6366F1),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    iconColor: Colors.white,
                  ),
                  iconLeft: CRButtonIcon.icon(Icons.star),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Custom outlined button
                CRButton2(
                  text: 'Custom Outlined',
                  style: CRButtonStyle.outlined,
                  activeConfig: const CRButtonStateConfig(
                    borderColor: Color(0xFFEC4899),
                    textStyle: TextStyle(
                      color: Color(0xFFEC4899),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    iconColor: Color(0xFFEC4899),
                  ),
                  iconRight: CRButtonIcon.icon(Icons.favorite),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Dark button
                CRButton2(
                  text: 'Dark Button',
                  style: CRButtonStyle.filled,
                  activeConfig: const CRButtonStateConfig(
                    fillColor: Color(0xFF1F2937),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    iconColor: Colors.white,
                  ),
                  iconLeft: CRButtonIcon.icon(Icons.dark_mode),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Different Sizes & Radius',
              [
                // Small button
                CRButton2(
                  text: 'Small',
                  height: 40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  activeConfig: const CRButtonStateConfig(
                    fillColor: Color(0xFF2D9F8E),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Large button
                CRButton2(
                  text: 'Large',
                  height: 64,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                  activeConfig: const CRButtonStateConfig(
                    fillColor: Color(0xFF2D9F8E),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Sharp corners
                CRButton2(
                  text: 'Sharp Corners',
                  radiusCorner: 4,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),

                // Very rounded
                CRButton2(
                  text: 'Very Rounded',
                  radiusCorner: 28,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Full Width Buttons',
              [
                CRButton2(
                  text: 'Full Width Button',
                  width: double.infinity,
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                CRButton2(
                  text: 'Full Width Outlined',
                  style: CRButtonStyle.outlined,
                  width: double.infinity,
                  iconRight: CRButtonIcon.icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            _buildSection(
              'Custom Disabled State',
              [
                // Custom disabled colors
                const CRButton2(
                  text: 'Custom Disabled',
                  disabledConfig: CRButtonStateConfig(
                    fillColor: Color(0xFFFEE2E2),
                    textStyle: TextStyle(
                      color: Color(0xFFEF4444),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    iconColor: Color(0xFFEF4444),
                  ),
                  iconLeft: CRButtonIcon.icon(Icons.block),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F2937),
          ),
        ),
        const SizedBox(height: 16),
        ...children,
      ],
    );
  }
}
