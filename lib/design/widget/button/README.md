# CRButton2 - Custom Button Component

Komponen custom button Flutter yang fleksibel dengan berbagai konfigurasi style, state, dan efek interaksi.

## Features

### 1. **Style Utama**
- **Filled** - Tombol dengan background warna solid
- **Outlined** - Tombol dengan border berwarna, tanpa fill

### 2. **Konfigurasi Parameter**

#### Parameter Utama
- `text` (required) - Text yang ditampilkan di button
- `style` - Style button (filled/outlined), default: `CRButtonStyle.filled`
- `onPressed` - Callback ketika button ditekan (null = disabled)

#### Konfigurasi Icon
- `iconLeft` - Icon di sisi kiri (opsional)
- `iconRight` - Icon di sisi kanan (opsional)
- `iconSize` - Ukuran icon, default: 20.0
- `iconSpacing` - Spacing antara icon dan text, default: 8.0
- `iconPosition` - Posisi icon, default: `CRButtonIconPosition.centerLeft`

#### Icon Position Options
- **centerLeft** - Icon di tengah kiri text
- **centerRight** - Icon di tengah kanan text
- **leftLeft** - Icon sebelah kiri text dan di ujung kiri
- **rightLeft** - Icon sebelah kiri text dan di ujung kanan
- **rightRight** - Icon sebelah kanan text dan di ujung kanan
- **leftRight** - Icon sebelah kanan text dan di ujung kiri

#### Konfigurasi Visual
- `radiusCorner` - Radius sudut button, default: 12.0
- `borderWidth` - Lebar border, default: 2.0
- `padding` - Padding button, default: `EdgeInsets.symmetric(horizontal: 24, vertical: 16)`
- `width` - Lebar button (null = wrap content)
- `height` - Tinggi button, default: 56.0

#### State Configuration
- `activeConfig` - Konfigurasi untuk state active (CRButtonStateConfig)
- `disabledConfig` - Konfigurasi untuk state disabled (CRButtonStateConfig)

**CRButtonStateConfig** memiliki properties:
- `fillColor` - Warna isi tombol
- `borderColor` - Warna border
- `textStyle` - Gaya text
- `iconColor` - Warna icon

#### Hover Effects
- `hoverEffect` - Jenis efek hover, default: `CRButtonHoverEffect.brightness`
- `animationDuration` - Durasi animasi, default: 150ms

**Hover Effect Options:**
- **scale** - Membesar sedikit saat hover
- **brightness** - Lebih terang saat hover (default, seperti Material)
- **elevation** - Shadow saat hover
- **none** - Tanpa efek

## Usage Examples

### Basic Usage

```dart
// Filled button
CRButton2(
  text: 'Button',
  onPressed: () {
    print('Button pressed');
  },
)

// Outlined button
CRButton2(
  text: 'Button',
  style: CRButtonStyle.outlined,
  onPressed: () {},
)

// Disabled button
CRButton2(
  text: 'Button',
  onPressed: null,
)
```

### Button with Icons

```dart
// Icon left
CRButton2(
  text: 'Add Item',
  iconLeft: Icons.add,
  onPressed: () {},
)

// Icon right
CRButton2(
  text: 'Next',
  iconRight: Icons.arrow_forward,
  iconPosition: CRButtonIconPosition.centerRight,
  onPressed: () {},
)

// Both icons
CRButton2(
  text: 'Transfer',
  iconLeft: Icons.send,
  iconRight: Icons.arrow_forward,
  onPressed: () {},
)
```

### Icon Positioning

```dart
// Icon di ujung kiri
CRButton2(
  text: 'Menu',
  iconLeft: Icons.menu,
  iconPosition: CRButtonIconPosition.leftLeft,
  width: double.infinity,
  onPressed: () {},
)

// Icon kiri text, posisi ujung kanan
CRButton2(
  text: 'Submit',
  iconLeft: Icons.check,
  iconPosition: CRButtonIconPosition.rightLeft,
  width: double.infinity,
  onPressed: () {},
)
```

### Custom Colors & Styles

```dart
// Custom filled button
CRButton2(
  text: 'Custom Button',
  style: CRButtonStyle.filled,
  activeConfig: CRButtonStateConfig(
    fillColor: Color(0xFF6366F1),
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    iconColor: Colors.white,
  ),
  iconLeft: Icons.star,
  onPressed: () {},
)

// Custom outlined button
CRButton2(
  text: 'Custom Outlined',
  style: CRButtonStyle.outlined,
  activeConfig: CRButtonStateConfig(
    borderColor: Color(0xFFEC4899),
    textStyle: TextStyle(
      color: Color(0xFFEC4899),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    iconColor: Color(0xFFEC4899),
  ),
  iconRight: Icons.favorite,
  onPressed: () {},
)
```

### Different Hover Effects

```dart
// Scale effect
CRButton2(
  text: 'Scale Effect',
  hoverEffect: CRButtonHoverEffect.scale,
  onPressed: () {},
)

// Brightness effect (default, seperti Material)
CRButton2(
  text: 'Brightness Effect',
  hoverEffect: CRButtonHoverEffect.brightness,
  onPressed: () {},
)

// Elevation effect
CRButton2(
  text: 'Elevation Effect',
  hoverEffect: CRButtonHoverEffect.elevation,
  onPressed: () {},
)
```

### Different Sizes

```dart
// Small button
CRButton2(
  text: 'Small',
  height: 40,
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  activeConfig: CRButtonStateConfig(
    fillColor: Color(0xFF2D9F8E),
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  ),
  onPressed: () {},
)

// Large button
CRButton2(
  text: 'Large',
  height: 64,
  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
  activeConfig: CRButtonStateConfig(
    fillColor: Color(0xFF2D9F8E),
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  onPressed: () {},
)
```

### Custom Border Radius

```dart
// Sharp corners
CRButton2(
  text: 'Sharp Corners',
  radiusCorner: 4,
  onPressed: () {},
)

// Very rounded
CRButton2(
  text: 'Very Rounded',
  radiusCorner: 28,
  onPressed: () {},
)

// Pill shape
CRButton2(
  text: 'Pill Shape',
  radiusCorner: 100,
  onPressed: () {},
)
```

### Full Width Button

```dart
CRButton2(
  text: 'Full Width Button',
  width: double.infinity,
  onPressed: () {},
)
```

### Custom Disabled State

```dart
CRButton2(
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
  iconLeft: Icons.block,
  onPressed: null,
)
```

## Interactive States

### Active State
Button dapat diklik dan menampilkan efek hover/press sesuai konfigurasi.

### Disabled State
Button tidak interaktif ketika `onPressed` adalah `null`. Cursor berubah menjadi `forbidden` dan tidak ada efek hover/press.

## Animation & Effects

### Hover Effects
- **Scale**: Button membesar 5% saat hover, mengecil 97% saat press
- **Brightness**: Overlay putih transparan muncul saat hover, ripple effect saat klik (seperti Material)
- **Elevation**: Shadow bertambah saat hover, mengecil saat press dengan overlay gelap

### Press Effect
- **Scale effect**: Button mengecil menjadi 97% saat ditekan
- **Elevation effect**: Shadow mengecil dan overlay gelap muncul saat ditekan
- **Brightness effect**: Ripple animation dan highlight overlay saat ditekan (Material style)
- **None effect**: Tidak ada press effect

### Animation Duration
Semua animasi menggunakan durasi default 150ms dengan curve `easeInOut`. Dapat dikustomisasi melalui parameter `animationDuration`.

## Platform Support

Komponen ini mendukung:
- ✅ Mobile (Android & iOS)
- ✅ Web
- ✅ Desktop (Windows, macOS, Linux)

Hover effects akan berfungsi di semua platform yang mendukung mouse/pointer.

## Example App

Lihat file `cr_button2_example.dart` untuk contoh lengkap penggunaan berbagai konfigurasi button.

## Notes

- Default warna mengikuti design system dengan warna teal (#2D9F8E)
- Semua parameter bersifat opsional kecuali `text`
- Button secara otomatis menjadi disabled ketika `onPressed` adalah `null`
- Hover effects hanya aktif pada state active (tidak disabled)
- Press effect (scale down) bekerja di semua platform
