# Flutter BLoC Practice App

This project is a Flutter application structured to demonstrate UI composition, routing, and reusable components. It includes two primary screens: **Home** and **Care**, each showcasing horizontally scrollable sections, product cards, events, and service listings. The architecture is organized for clarity and scalability, following common Flutter best practices.

---

## Features

### **1. Multi-Screen Navigation**

* Navigation is implemented using named routes via the Flutter `MaterialApp` widget.
* Routes:

    * `/` → `HomeUi`
    * `/care` → `CareScreen`

### **2. Modular UI Components**

* Custom reusable components:

    * `ApplicationAppBar`
    * `TitleSection`
    * Multiple style helpers from `style.dart`

### **3. Scrollable Layouts**

* `PageView.builder` sections for:

    * Nearby users
    * Deals of the day
    * Upcoming events
    * Services
* `GridView.builder` for service listing in the Care screen.

### **4. Responsive UI**

* Uses `MediaQuery` for dynamic height calculations.
* Layouts adjust based on device size.

---

## Project Structure

```
lib/
│
├── main.dart
│
├── screens/
│   ├── home_ui.dart
│   └── care_screen.dart
│
├── components/
│   ├── app_bar.dart
│   └── section_title_section.dart
│
└── style/
    └── style.dart
```

---

## Dependencies

This project uses built‑in Flutter packages such as:

* `flutter/material.dart`
* `flutter/cupertino.dart`

---

## Assets

Ensure the following asset folder exists and is referenced in `pubspec.yaml`:

```
Images/
├── profile1.png
├── product1.png
├── eventImage.png
├── eventProfileLayer.png
├── services1.png
└── car_recomendation.png
```

Example entry in `pubspec.yaml`:

```
flutter:
  assets:
    - Images/
```

---

## How to Run

1. Install Flutter SDK.
2. Run `flutter pub get`.
3. Launch the app:

```
flutter run
```

---

## Future Improvements

* Integrate actual BLoC state management.
* Fetch data dynamically instead of static lists.
* Add error handling and loading states.
* Improve theme scalability and dark-mode support.

---

## License

This project is open for educational and experimental use.
