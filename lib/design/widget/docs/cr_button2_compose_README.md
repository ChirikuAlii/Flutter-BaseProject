# CRButton2 Compose Classes

Compose classes adalah wrapper dari `CRButton2` yang menyediakan preset konfigurasi untuk use case yang umum. Ini membuat penggunaan button lebih sederhana dan konsisten.

## 📦 Available Compose Classes

### 1. CRButton2FillCompose

Button dengan style **filled** dan **fully rounded corner** (seperti button "Continue" yang umum).

#### ✨ Features

- ✅ Style filled dengan warna teal default
- ✅ Fully rounded corner (radius 100)
- ✅ Full width by default
- ✅ Height 56px (standard touch target)
- ✅ White text dengan font weight 600
- ✅ Brightness hover effect
- ✅ Disabled state dengan grey color

#### 🎯 Basic Usage

```dart
// Paling sederhana
CRButton2FillCompose(
  text: 'Continue',
  onPressed: () {
    // Handle tap
  },
)

// Dengan icon
CRButton2FillCompose(
  text: 'Continue',
  iconRight: const CRButtonIcon.icon(Icons.arrow_forward),
  iconPosition: CRButtonIconPosition.centerRight,
  onPressed: () {},
)

// Custom color
CRButton2FillCompose(
  text: 'Continue',
  backgroundColor: const Color(0xFFEC4899),
  onPressed: () {},
)

// Disabled
const CRButton2FillCompose(
  text: 'Continue',
  onPressed: null,
)
```

#### 🎨 Customization Options

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `text` | `String` | Required | Text yang ditampilkan |
| `onPressed` | `VoidCallback?` | Required | Callback saat button ditekan |
| `iconLeft` | `CRButtonIcon?` | `null` | Icon di kiri |
| `iconRight` | `CRButtonIcon?` | `null` | Icon di kanan |
| `iconPosition` | `CRButtonIconPosition` | `centerLeft` | Posisi icon |
| `width` | `double?` | `double.infinity` | Lebar button |
| `height` | `double` | `56` | Tinggi button |
| `backgroundColor` | `Color?` | `Color(0xFF2D9F8E)` | Warna background |
| `textColor` | `Color?` | `Colors.white` | Warna text |
| `fontSize` | `double` | `16` | Ukuran text |
| `fontWeight` | `FontWeight` | `FontWeight.w600` | Ketebalan text |
| `iconColor` | `Color?` | `Colors.white` | Warna icon |
| `iconSize` | `double` | `20` | Ukuran icon |
| `iconSpacing` | `double` | `8` | Jarak icon-text |
| `hoverEffect` | `CRButtonHoverEffect` | `brightness` | Efek hover |
| `radiusCorner` | `double` | `100` | Border radius |
| `padding` | `EdgeInsetsGeometry?` | `EdgeInsets.symmetric(h:24, v:16)` | Padding |
| `disabledConfig` | `CRButtonStateConfig?` | Grey preset | Konfigurasi disabled |

#### 📊 Comparison

**Using Compose (Simple):**
```dart
CRButton2FillCompose(
  text: 'Continue',
  onPressed: () {},
)
```

**Using Original (Verbose):**
```dart
CRButton2(
  text: 'Continue',
  style: CRButtonStyle.filled,
  radiusCorner: 100,
  width: double.infinity,
  height: 56,
  activeConfig: const CRButtonStateConfig(
    fillColor: Color(0xFF2D9F8E),
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    iconColor: Colors.white,
  ),
  disabledConfig: const CRButtonStateConfig(
    fillColor: Colors.grey,
    textStyle: TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    iconColor: Colors.grey,
  ),
  onPressed: () {},
)
```

**Lines of code:** 2 vs 25 lines! 🎉

## 🎯 When to Use

### Use Compose Classes When:
- ✅ Anda ingin button dengan style yang konsisten
- ✅ Anda ingin code yang lebih clean dan readable
- ✅ Anda ingin mengurangi boilerplate code
- ✅ Anda ingin preset yang sudah tested dan proven

### Use Original CRButton2 When:
- ✅ Anda butuh kustomisasi yang sangat spesifik
- ✅ Anda butuh kontrol penuh atas semua parameter
- ✅ Preset compose tidak sesuai dengan design requirement

## 🚀 Future Compose Classes

Planned compose classes:

- `CRButton2OutlineCompose` - Outlined button preset
- `CRButton2TextCompose` - Text button preset
- `CRButton2IconCompose` - Icon-only button preset
- `CRButton2FloatingCompose` - Floating action button preset

## 💡 Best Practices

1. **Consistency**: Gunakan compose classes untuk menjaga konsistensi UI
2. **Customization**: Override parameter hanya jika diperlukan
3. **Naming**: Gunakan nama yang descriptive untuk custom compose classes
4. **Documentation**: Dokumentasikan preset yang Anda buat

## 📝 Example

Lihat file `cr_button2_compose_example.dart` untuk contoh lengkap penggunaan.

## 🔗 Related

- [CRButton2 Main Documentation](./README.md)
- [CRButton2 Icon Types](./cr_button2_icon_types_example.dart)
- [CRButton2 Examples](./cr_button2_example.dart)
