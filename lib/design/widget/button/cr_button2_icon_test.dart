import 'package:flutter/material.dart';
import 'cr_button2.dart';

/// Test page untuk memverifikasi semua icon positions
class CRButton2IconTest extends StatelessWidget {
  const CRButton2IconTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRButton2 Icon Position Test'),
        backgroundColor: const Color(0xFF2D9F8E),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Icon Position Tests',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            
            // centerLeft
            const Text('centerLeft - Icon di tengah kiri text'),
            const SizedBox(height: 8),
            CRButton2(
              text: 'Button with Icon',
              iconLeft: const CRButtonIcon.icon(Icons.star),
              iconPosition: CRButtonIconPosition.centerLeft,
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            
            // centerRight
            const Text('centerRight - Icon di tengah kanan text'),
            const SizedBox(height: 8),
            CRButton2(
              text: 'Button',
              iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
              iconPosition: CRButtonIconPosition.centerRight,
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            
            // leftLeft
            const Text('leftLeft - Icon sebelah kiri text, posisi di ujung kiri'),
            const SizedBox(height: 8),
            CRButton2(
              text: 'Button',
              iconLeft: const CRButtonIcon.icon(Icons.menu),
              iconPosition: CRButtonIconPosition.leftLeft,
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            
            // rightLeft
            const Text('rightLeft - Icon sebelah kiri text, posisi di ujung kanan'),
            const SizedBox(height: 8),
            CRButton2(
              text: 'Button',
              iconLeft: const CRButtonIcon.icon(Icons.check),
              iconPosition: CRButtonIconPosition.rightLeft,
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            
            // rightRight
            const Text('rightRight - Icon sebelah kanan text, posisi di ujung kanan'),
            const SizedBox(height: 8),
            CRButton2(
              text: 'Button',
              iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
              iconPosition: CRButtonIconPosition.rightRight,
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            
            // leftRight
            const Text('leftRight - Icon sebelah kanan text, posisi di ujung kiri'),
            const SizedBox(height: 8),
            CRButton2(
              text: 'Button',
              iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
              iconPosition: CRButtonIconPosition.leftRight,
              width: double.infinity,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            
            // Test dengan text panjang
            const Text(
              'Test dengan Text Panjang (Overflow Handling)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            CRButton2(
              text: 'This is a very long button text that should be truncated with ellipsis',
              iconLeft: const CRButtonIcon.icon(Icons.info),
              iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
              iconPosition: CRButtonIconPosition.leftLeft,
              width: 300,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            
            CRButton2(
              text: 'This is a very long button text that should be truncated with ellipsis',
              iconLeft: const CRButtonIcon.icon(Icons.info),
              iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
              iconPosition: CRButtonIconPosition.rightRight,
              width: 300,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            
            CRButton2(
              text: 'This is a very long button text that should be truncated',
              iconLeft: const CRButtonIcon.icon(Icons.info),
              iconPosition: CRButtonIconPosition.centerLeft,
              width: 250,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
