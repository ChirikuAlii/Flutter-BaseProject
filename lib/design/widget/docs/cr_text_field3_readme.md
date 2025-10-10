# CRTextField3 - Dynamic Custom Text Field

Widget text field yang sangat customizable dengan berbagai state, style, dan konfigurasi. Dirancang untuk memenuhi berbagai kebutuhan input form dengan tetap menjaga konsistensi kode dan clean code principles.

## Fitur Utama

### 1. **Multiple States**
- **Default**: State normal saat tidak ada interaksi
- **Focus**: State saat text field sedang aktif/fokus
- **Error**: State untuk menampilkan error dengan message
- **Success**: State untuk menampilkan success dengan message
- **Disable**: State untuk field yang tidak dapat diedit

### 2. **Hint Type**
- **Static Label**: Label statis di atas text field (tidak beranimasi)
- **Floating Label**: Label dengan animasi Material Design

### 3. **Style**
- **Fill**: Text field dengan background penuh
- **Underline**: Text field hanya dengan garis bawah

### 4. **Input Type**
- **Text**: Input text biasa
- **Password**: Input password dengan toggle visibility
- **Dropdown**: Dropdown selection
- **Phone Number**: Input nomor telepon dengan country code selector

## Penggunaan Dasar

```dart
// 1. Text Field Default
CRTextField3(
  labelText: 'Username',
  hintText: 'Masukkan username',
  prefixIcon: Icon(Icons.person),
)

// 2. Static Label
CRTextField3(
  labelText: 'Email',
  hintText: 'Masukkan email',
  hintType: CRTextFieldHintType.staticLabel,
)

// 3. Password Field
CRTextField3(
  labelText: 'Password',
  inputType: CRTextFieldInputType.password,
  prefixIcon: Icon(Icons.lock),
)

// 4. Phone Number
CRTextField3(
  labelText: 'Phone',
  inputType: CRTextFieldInputType.phoneNumber,
  countryCode: '+62',
  countryCodes: ['+62', '+1', '+65'],
)

// 5. Dropdown
CRTextField3(
  labelText: 'City',
  inputType: CRTextFieldInputType.dropdown,
  dropdownItems: ['Jakarta', 'Bandung', 'Surabaya'],
  dropdownValue: selectedCity,
  onDropdownChanged: (value) => setState(() => selectedCity = value),
)
```

## State Management

### Error State
```dart
CRTextField3(
  labelText: 'Username',
  currentState: CRTextFieldState.error,
  errorMessage: 'Username sudah digunakan!',
  errorConfig: CRTextFieldStateConfig(
    borderColor: CRColors.error,
    borderWidth: 2.0,
  ),
)
```

### Success State
```dart
CRTextField3(
  labelText: 'Email',
  currentState: CRTextFieldState.success,
  successMessage: 'Email tersedia!',
  successConfig: CRTextFieldStateConfig(
    borderColor: CRColors.success3,
    borderWidth: 2.0,
    fillColor: CRColors.success1,
  ),
)
```

### Disabled State
```dart
CRTextField3(
  labelText: 'Disabled Field',
  enabled: false,
  disableConfig: CRTextFieldStateConfig(
    fillColor: CRColors.grey8,
    borderColor: CRColors.grey2,
  ),
)
```

## Customization per State

Setiap state dapat dikustomisasi dengan `CRTextFieldStateConfig`:

```dart
CRTextField3(
  labelText: 'Custom Field',
  
  // Default config
  defaultConfig: CRTextFieldStateConfig(
    borderRadius: 12.0,
    fillColor: Colors.white,
    borderColor: CRColors.grey2,
    borderWidth: 1.5,
  ),
  
  // Focus config
  focusConfig: CRTextFieldStateConfig(
    borderRadius: 12.0,
    fillColor: CRColors.blue6,
    borderColor: CRColors.primary,
    borderWidth: 2.0,
    leftIcon: Icon(Icons.star, color: CRColors.primary),
  ),
  
  // Error config
  errorConfig: CRTextFieldStateConfig(
    borderColor: CRColors.error,
    borderWidth: 2.0,
    leftIcon: Icon(Icons.error, color: CRColors.error),
  ),
  
  // Success config
  successConfig: CRTextFieldStateConfig(
    borderColor: CRColors.success3,
    fillColor: CRColors.success1,
    borderWidth: 2.0,
  ),
  
  // Disable config
  disableConfig: CRTextFieldStateConfig(
    fillColor: CRColors.grey8,
    borderColor: CRColors.grey2,
  ),
)
```

## Properties

### Basic Properties
| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `controller` | `TextEditingController?` | `null` | Controller untuk text field |
| `labelText` | `String?` | `null` | Text untuk label |
| `hintText` | `String?` | `null` | Text untuk hint |
| `hintType` | `CRTextFieldHintType` | `floatingLabel` | Tipe hint (static/floating) |
| `style` | `CRTextFieldStyle` | `fill` | Style field (fill/underline) |
| `inputType` | `CRTextFieldInputType` | `text` | Tipe input |

### State Properties
| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `currentState` | `CRTextFieldState` | `defaultState` | State saat ini |
| `errorMessage` | `String?` | `null` | Pesan error |
| `successMessage` | `String?` | `null` | Pesan success |

### Configuration Properties
| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `defaultConfig` | `CRTextFieldStateConfig?` | `null` | Config untuk state default |
| `focusConfig` | `CRTextFieldStateConfig?` | `null` | Config untuk state focus |
| `errorConfig` | `CRTextFieldStateConfig?` | `null` | Config untuk state error |
| `successConfig` | `CRTextFieldStateConfig?` | `null` | Config untuk state success |
| `disableConfig` | `CRTextFieldStateConfig?` | `null` | Config untuk state disable |

### Default Styling
| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `defaultBorderRadius` | `double` | `12.0` | Border radius default |
| `defaultFillColor` | `Color` | `Colors.white` | Warna fill default |
| `defaultBorderColor` | `Color` | `CRColors.grey2` | Warna border default |
| `defaultTextColor` | `Color` | `CRColors.black1` | Warna text default |
| `defaultHintColor` | `Color` | `CRColors.grey1` | Warna hint default |
| `defaultLabelColor` | `Color` | `CRColors.black1` | Warna label default |
| `defaultBorderWidth` | `double` | `1.5` | Lebar border default |

### Layout
| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `margin` | `EdgeInsets` | `vertical: 8.0` | Margin field (default 8dp atas-bawah) |

### Input Properties
| Property | Type | Default | Description |
|----------|------|---------|-------------|
| `keyboardType` | `TextInputType?` | `null` | Tipe keyboard |
| `inputFormatters` | `List<TextInputFormatter>?` | `null` | Input formatters |
| `maxLines` | `int?` | `1` | Jumlah baris maksimal |
| `maxLength` | `int?` | `null` | Panjang karakter maksimal |
| `enabled` | `bool` | `true` | Apakah field aktif |
| `readOnly` | `bool` | `false` | Apakah field read only |

### Callbacks
| Property | Type | Description |
|----------|------|-------------|
| `onChanged` | `Function(String)?` | Callback saat text berubah |
| `onTap` | `Function()?` | Callback saat field di-tap |
| `onSubmitted` | `Function(String)?` | Callback saat submit |

### Icons
| Property | Type | Description |
|----------|------|-------------|
| `prefixIcon` | `Widget?` | Icon di sebelah kiri |
| `suffixIcon` | `Widget?` | Icon di sebelah kanan |

### Dropdown Properties
| Property | Type | Description |
|----------|------|-------------|
| `dropdownItems` | `List<String>?` | Item-item dropdown |
| `dropdownValue` | `String?` | Nilai dropdown terpilih |
| `onDropdownChanged` | `Function(String?)?` | Callback saat dropdown berubah |

### Phone Number Properties
| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `String?` | Country code default |
| `onCountryCodeChanged` | `Function(String?)?` | Callback saat country code berubah |
| `countryCodes` | `List<String>?` | List country codes |

## CRTextFieldStateConfig

Class untuk konfigurasi setiap state:

```dart
class CRTextFieldStateConfig {
  final double? borderRadius;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? labelColor;
  final Widget? leftIcon;
  final double? borderWidth;
}
```

## Error & Success Messages

Widget otomatis menampilkan message card untuk error dan success:

- **Error Message**: Background merah muda dengan icon error
- **Success Message**: Background hijau muda dengan icon check

```dart
// Error
CRTextField3(
  currentState: CRTextFieldState.error,
  errorMessage: 'Password minimal 8 karakter',
)

// Success
CRTextField3(
  currentState: CRTextFieldState.success,
  successMessage: 'Data berhasil disimpan',
)
```

## Best Practices

1. **Gunakan Controller**: Untuk field yang perlu diakses nilainya
```dart
final controller = TextEditingController();
CRTextField3(controller: controller)
```

2. **State Management**: Kelola state dengan setState atau state management solution
```dart
CRTextFieldState _state = CRTextFieldState.defaultState;

void validateField() {
  if (isValid) {
    setState(() => _state = CRTextFieldState.success);
  } else {
    setState(() => _state = CRTextFieldState.error);
  }
}
```

3. **Consistency**: Gunakan color dari CRColors untuk konsistensi
```dart
CRTextField3(
  focusConfig: CRTextFieldStateConfig(
    borderColor: CRColors.primary, // Konsisten dengan design system
  ),
)
```

4. **Validation**: Berikan feedback yang jelas
```dart
CRTextField3(
  currentState: hasError ? CRTextFieldState.error : CRTextFieldState.success,
  errorMessage: hasError ? 'Username sudah digunakan' : null,
  successMessage: !hasError ? 'Username tersedia' : null,
)
```

## Contoh Lengkap

Lihat file `cr_text_field3_example.dart` untuk contoh lengkap penggunaan semua fitur.

## Architecture

Widget ini menggunakan prinsip:
- **Single Responsibility**: Setiap method memiliki tugas spesifik
- **Composition over Inheritance**: Menggunakan config objects
- **DRY (Don't Repeat Yourself)**: Reusable configuration
- **Clean Code**: Mudah dibaca dan di-maintain
