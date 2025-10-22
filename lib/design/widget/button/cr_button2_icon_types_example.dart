import 'package:flutter/material.dart';
import 'cr_button2.dart';

/// Example untuk mendemonstrasikan berbagai jenis icon (Icon, SVG, Image)
class CRButton2IconTypesExample extends StatelessWidget {
  const CRButton2IconTypesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRButton2 Icon Types'),
        backgroundColor: const Color(0xFF2D9F8E),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Material Icons',
              [
                // Icon biasa
                CRButton2(
                  text: 'Add Item',
                  iconLeft: const CRButtonIcon.icon(Icons.add),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                
                // Icon dengan custom size
                CRButton2(
                  text: 'Large Icon',
                  iconLeft: const CRButtonIcon.icon(
                    Icons.star,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                
                // Icon dengan custom color
                CRButton2(
                  text: 'Custom Color Icon',
                  style: CRButtonStyle.outlined,
                  iconLeft: const CRButtonIcon.icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  activeConfig: const CRButtonStateConfig(
                    borderColor: Color(0xFF2D9F8E),
                    textStyle: TextStyle(
                      color: Color(0xFF2D9F8E),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            _buildSection(
              'SVG Icons',
              [
                // SVG icon
                const CRButton2(
                  text: 'SVG Icon',
                  iconLeft: CRButtonIcon.svg(
                    'assets/icons/example.svg', // Ganti dengan path SVG Anda
                  ),
                  onPressed: null, // Disabled untuk demo
                ),
                const SizedBox(height: 16),
                
                // SVG dengan custom size
                const CRButton2(
                  text: 'Large SVG',
                  iconLeft: CRButtonIcon.svg(
                    'assets/icons/example.svg',
                    size: 32,
                  ),
                  onPressed: null,
                ),
                const SizedBox(height: 16),
                
                // SVG dengan custom color
                const CRButton2(
                  text: 'Colored SVG',
                  iconLeft: CRButtonIcon.svg(
                    'assets/icons/example.svg',
                    color: Colors.orange,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            _buildSection(
              'Image Icons',
              [
                // Image icon
                const CRButton2(
                  text: 'Image Icon',
                  iconLeft: CRButtonIcon.image(
                    'assets/images/logo.png', // Ganti dengan path image Anda
                  ),
                  onPressed: null,
                ),
                const SizedBox(height: 16),
                
                // Image dengan custom size
                const CRButton2(
                  text: 'Large Image',
                  iconLeft: CRButtonIcon.image(
                    'assets/images/logo.png',
                    size: 40,
                  ),
                  onPressed: null,
                ),
                const SizedBox(height: 16),
                
                // Image dengan custom fit
                const CRButton2(
                  text: 'Cover Fit',
                  iconLeft: CRButtonIcon.image(
                    'assets/images/logo.png',
                    size: 32,
                    fit: BoxFit.cover,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            _buildSection(
              'Mixed Icon Types',
              [
                // Icon kiri (Material) + Icon kanan (SVG)
                const CRButton2(
                  text: 'Mixed Icons',
                  iconLeft: CRButtonIcon.icon(Icons.home),
                  iconRight: CRButtonIcon.svg(
                    'assets/icons/arrow.svg',
                    size: 16,
                  ),
                  width: double.infinity,
                  onPressed: null,
                ),
                const SizedBox(height: 16),
                
                // Image kiri + Icon kanan
                const CRButton2(
                  text: 'Image + Icon',
                  iconLeft: CRButtonIcon.image(
                    'assets/images/logo.png',
                    size: 24,
                  ),
                  iconRight: CRButtonIcon.icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                  width: double.infinity,
                  onPressed: null,
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            _buildSection(
              'Different Icon Positions',
              [
                // leftLeft dengan SVG
                const CRButton2(
                  text: 'Left Left',
                  iconLeft: CRButtonIcon.svg(
                    'assets/icons/menu.svg',
                  ),
                  iconPosition: CRButtonIconPosition.leftLeft,
                  width: double.infinity,
                  onPressed: null,
                ),
                const SizedBox(height: 16),
                
                // rightRight dengan Image
                const CRButton2(
                  text: 'Right Right',
                  iconRight: CRButtonIcon.image(
                    'assets/images/icon.png',
                    size: 24,
                  ),
                  iconPosition: CRButtonIconPosition.rightRight,
                  width: double.infinity,
                  onPressed: null,
                ),
              ],
            ),
            
            const SizedBox(height: 24),
            
            const Text(
              'Note: Contoh SVG dan Image di-disable karena memerlukan asset yang sebenarnya. '
              'Ganti path dengan asset Anda untuk testing.',
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
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
