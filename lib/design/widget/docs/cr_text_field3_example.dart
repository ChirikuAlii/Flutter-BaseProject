import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/widget/cr_text_field3_compose.dart';
import '../cr_text_field3.dart';
import '../../colors/colors.dart';

/// Contoh penggunaan CRTextField3 dengan berbagai konfigurasi
class CRTextField3Example extends StatefulWidget {
  const CRTextField3Example({super.key});

  @override
  State<CRTextField3Example> createState() => _CRTextField3ExampleState();
}

class _CRTextField3ExampleState extends State<CRTextField3Example> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? _selectedCity;
  CRTextFieldState _usernameState = CRTextFieldState.none;
  CRTextFieldState _passwordState = CRTextFieldState.none;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRTextField3 Examples'),
        backgroundColor: CRColors.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== 1. TEXT FIELD DEFAULT (FLOATING LABEL) =====
            const Text(
              '1. Default dengan Floating Label',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              controller: _usernameController,
              labelText: 'Username',
              hintText: 'Masukkan username',
              prefixIcon: const Icon(Icons.person, color: CRColors.grey1),
            ),

            const SizedBox(height: 24),

            // ===== 2. TEXT FIELD DENGAN STATIC LABEL =====
            const Text(
              '2. Static Label (Tidak Beranimasi)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Email',
              hintText: 'Masukkan email anda',
              hintType: CRTextFieldHintType.staticLabel,
              prefixIcon: const Icon(Icons.email, color: CRColors.grey1),
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 24),

            // ===== 3. PASSWORD FIELD =====
            const Text(
              '3. Password Field dengan Toggle Visibility',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
                controller: _passwordController,
                labelText: 'Password',
                hintText: 'Masukkan password',
                inputType: CRTextFieldInputType.password,
                prefixIcon: const Icon(Icons.lock, color: CRColors.grey1),
                currentState: _passwordState),

            const SizedBox(height: 24),

            // ===== 4. ERROR STATE =====
            const Text(
              '4. Error State',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Username',
              hintText: 'Username',
              currentState: CRTextFieldState.error,
              prefixIcon: const Icon(Icons.person, color: CRColors.error),
              errorConfig: const CRTextFieldStateConfig(
                borderColor: CRColors.error,
                borderWidth: 2.0,
              ),
            ),

            const SizedBox(height: 24),

            // ===== 5. SUCCESS STATE =====
            const Text(
              '5. Success State',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Email',
              hintText: 'email@example.com',
              currentState: CRTextFieldState.success,
              prefixIcon: const Icon(Icons.email, color: CRColors.success3),
              successConfig: const CRTextFieldStateConfig(
                borderColor: CRColors.success3,
                borderWidth: 2.0,
                fillColor: CRColors.success1,
              ),
            ),

            const SizedBox(height: 24),

            // ===== 6. DISABLED STATE =====
            const Text(
              '6. Disabled State',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Disabled Field',
              hintText: 'Tidak bisa diedit',
              enabled: false,
              prefixIcon: const Icon(Icons.block, color: CRColors.grey2),
              disableConfig: const CRTextFieldStateConfig(
                fillColor: CRColors.grey8,
                borderColor: CRColors.grey2,
                textColor: CRColors.grey1,
              ),
            ),

            const SizedBox(height: 24),

            // ===== 7. PHONE NUMBER FIELD =====
            const Text(
              '7. Phone Number dengan Country Code',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              controller: _phoneController,
              labelText: 'Phone Number',
              hintText: 'Masukkan nomor telepon',
              inputType: CRTextFieldInputType.phoneNumber,
              keyboardType: TextInputType.phone,
              countryCode: '+62',
              countryCodes: const ['+62', '+1', '+65', '+60', '+44'],
              onCountryCodeChanged: (code) {
                print('Country code changed to: $code');
              },
            ),

            const SizedBox(height: 24),

            // ===== 8. DROPDOWN FIELD =====
            const Text(
              '8. Dropdown Field',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Pilih Kota',
              hintText: 'Pilih kota anda',
              inputType: CRTextFieldInputType.dropdown,
              dropdownItems: const [
                'Jakarta',
                'Bandung',
                'Surabaya',
                'Medan',
                'Semarang'
              ],
              dropdownValue: _selectedCity,
              onDropdownChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });
              },
              prefixIcon:
                  const Icon(Icons.location_city, color: CRColors.grey1),
            ),

            const SizedBox(height: 24),

            // ===== 9. UNDERLINE STYLE =====
            const Text(
              '9. Underline Style',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Search',
              hintText: 'Cari sesuatu...',
              style: CRTextFieldStyle.underline,
              prefixIcon: const Icon(Icons.search, color: CRColors.grey1),
              defaultFillColor: Colors.transparent,
            ),

            const SizedBox(height: 24),

            // ===== 10. CUSTOM RADIUS & COLORS =====
            const Text(
              '10. Custom Radius & Focus Color',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Custom Field',
              hintText: 'Field dengan custom styling',
              defaultBorderRadius: 24.0,
              prefixIcon: const Icon(Icons.star, color: CRColors.primary),
              focusConfig: const CRTextFieldStateConfig(
                borderColor: CRColors.primary,
                borderWidth: 2.5,
                borderRadius: 24.0,
                fillColor: CRColors.blue6,
              ),
            ),

            const SizedBox(height: 24),

            // ===== 11. MULTILINE TEXT FIELD =====
            const Text(
              '11. Multiline Text Area',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CRTextField3Compose(
              labelText: 'Deskripsi',
              hintText: 'Tulis deskripsi anda...',
              hintType: CRTextFieldHintType.staticLabel,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
            ),

            const SizedBox(height: 24),

            // ===== 12. ALL STATES DEMO =====
            const Text(
              '12. Demo Semua State',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            _buildStateDemo(),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildStateDemo() {
    return Column(
      children: [
        // Default
        CRTextField3Compose(
          labelText: 'Default',
          hintText: 'State: Default',
          currentState: CRTextFieldState.none,
          prefixIcon: const Icon(Icons.info, color: CRColors.grey1),
        ),

        // Focus (simulasi)
        CRTextField3Compose(
          labelText: 'Focus',
          hintText: 'State: Focus',
          prefixIcon: const Icon(Icons.info, color: CRColors.primary),
          focusConfig: const CRTextFieldStateConfig(
            borderColor: CRColors.primary,
            borderWidth: 2.0,
          ),
        ),

        // Error
        CRTextField3Compose(
          labelText: 'Error',
          hintText: 'State: Error',
          currentState: CRTextFieldState.error,
          prefixIcon: const Icon(Icons.error, color: CRColors.error),
          errorConfig: const CRTextFieldStateConfig(
            borderColor: CRColors.error,
            borderWidth: 2.0,
          ),
        ),

        // Success
        CRTextField3Compose(
          labelText: 'Success',
          hintText: 'State: Success',
          currentState: CRTextFieldState.success,
          prefixIcon: const Icon(Icons.check_circle, color: CRColors.success3),
          successConfig: const CRTextFieldStateConfig(
            borderColor: CRColors.success3,
            borderWidth: 2.0,
            fillColor: CRColors.success1,
          ),
        ),

        // Disabled
        CRTextField3Compose(
          labelText: 'Disabled',
          hintText: 'State: Disabled',
          enabled: false,
          prefixIcon: const Icon(Icons.block, color: CRColors.grey2),
          disableConfig: const CRTextFieldStateConfig(
            fillColor: CRColors.grey8,
            borderColor: CRColors.grey2,
          ),
        ),
      ],
    );
  }
}
