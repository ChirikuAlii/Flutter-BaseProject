# 🚀 Quick Start - CRButton2 Compose

Panduan cepat untuk menggunakan CRButton2 Compose classes.

## 📦 Import

```dart
import 'package:your_app/design/widget/button/cr_button2_fill_compose.dart';
import 'package:your_app/design/widget/button/cr_button2_outline_compose.dart';
```

## 🎯 Basic Usage

### Filled Button (Seperti gambar "Continue")

```dart
CRButton2FillCompose(
  text: 'Continue',
  onPressed: () {
    // Your action here
  },
)
```

**Output:** Button teal dengan text putih, fully rounded, full width

### Outlined Button

```dart
CRButton2OutlineCompose(
  text: 'Cancel',
  onPressed: () {
    // Your action here
  },
)
```

**Output:** Button transparent dengan border teal, fully rounded, full width

## 🎨 Common Customizations

### 1. Dengan Icon

```dart
// Icon di kanan
CRButton2FillCompose(
  text: 'Continue',
  iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
  iconPosition: CRButtonIconPosition.centerRight,
  onPressed: () {},
)

// Icon di kiri
CRButton2FillCompose(
  text: 'Back',
  iconLeft: const CRButtonIcon.icon(Icons.arrow_back),
  iconPosition: CRButtonIconPosition.centerLeft,
  onPressed: () {},
)
```

### 2. Custom Color

```dart
// Filled - Pink
CRButton2FillCompose(
  text: 'Delete',
  backgroundColor: Colors.red,
  onPressed: () {},
)

// Outlined - Blue
CRButton2OutlineCompose(
  text: 'Info',
  borderColor: Colors.blue,
  onPressed: () {},
)
```

### 3. Custom Size

```dart
// Small button
CRButton2FillCompose(
  text: 'Small',
  height: 44,
  fontSize: 14,
  onPressed: () {},
)

// Large button
CRButton2FillCompose(
  text: 'Large',
  height: 64,
  fontSize: 18,
  onPressed: () {},
)

// Fixed width
CRButton2FillCompose(
  text: 'Fixed',
  width: 200,
  onPressed: () {},
)
```

### 4. Disabled State

```dart
const CRButton2FillCompose(
  text: 'Disabled',
  onPressed: null,  // null = disabled
)
```

## 🎭 Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:your_app/design/widget/button/cr_button2_fill_compose.dart';
import 'package:your_app/design/widget/button/cr_button2_outline_compose.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login button
            CRButton2FillCompose(
              text: 'Login',
              iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
              iconPosition: CRButtonIconPosition.centerRight,
              onPressed: () {
                // Handle login
              },
            ),
            
            const SizedBox(height: 16),
            
            // Register button
            CRButton2OutlineCompose(
              text: 'Register',
              onPressed: () {
                // Handle register
              },
            ),
            
            const SizedBox(height: 16),
            
            // Guest button
            CRButton2OutlineCompose(
              text: 'Continue as Guest',
              borderColor: Colors.grey,
              height: 48,
              onPressed: () {
                // Handle guest
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

## 📊 Cheat Sheet

| Use Case | Code |
|----------|------|
| **Primary Action** | `CRButton2FillCompose(text: 'Continue', onPressed: () {})` |
| **Secondary Action** | `CRButton2OutlineCompose(text: 'Cancel', onPressed: () {})` |
| **Destructive** | `CRButton2FillCompose(text: 'Delete', backgroundColor: Colors.red, onPressed: () {})` |
| **With Icon** | `CRButton2FillCompose(text: 'Next', iconRight: CRButtonIcon.icon(Icons.arrow_forward), onPressed: () {})` |
| **Disabled** | `CRButton2FillCompose(text: 'Submit', onPressed: null)` |
| **Loading** | `CRButton2FillCompose(text: 'Loading...', onPressed: null)` |

## 💡 Tips

1. **Full Width**: Default adalah full width, cocok untuk mobile
2. **Height**: Default 56px sesuai Material Design guidelines
3. **Colors**: Gunakan color scheme dari design system Anda
4. **Icons**: Gunakan `CRButtonIcon.icon()` untuk Material Icons
5. **Disabled**: Set `onPressed: null` untuk disable button

## 🔗 Next Steps

- Lihat [COMPOSE_README.md](./COMPOSE_README.md) untuk dokumentasi lengkap
- Lihat [cr_button2_compose_example.dart](./cr_button2_compose_example.dart) untuk contoh lengkap
- Lihat [README.md](./README.md) untuk dokumentasi CRButton2 original

## ❓ FAQ

**Q: Kapan menggunakan Compose vs Original?**
A: Gunakan Compose untuk use case umum (90% kasus). Gunakan Original jika butuh kustomisasi sangat spesifik.

**Q: Bisa custom semua parameter?**
A: Ya! Semua parameter bisa di-override sesuai kebutuhan.

**Q: Performa lebih lambat?**
A: Tidak, Compose hanya wrapper tipis, tidak ada overhead performa.

**Q: Bisa buat Compose sendiri?**
A: Ya! Extend dari StatelessWidget dan wrap CRButton2 dengan preset Anda.
