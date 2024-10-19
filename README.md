

# 💸 Payment Integration App

A **Flutter** application that integrates **eSewa** and **Khalti** payment gateways, alongside a robust **connectivity checker** to manage online/offline scenarios. This app allows users to choose between multiple payment methods for purchasing products, including Internet Banking, Debit/Credit Cards (upcoming feature), and popular digital wallets like eSewa and Khalti.

---

## 🚀 Features

- **Payment Options Screen**: Offers a variety of payment options, including Debit/Credit Cards, Internet Banking, eSewa, and Khalti.
- **eSewa Payment Integration**: Facilitates test payments through eSewa's SDK with seamless payment processing.
- **Khalti Payment Integration**: Supports Khalti payments with detailed transaction status updates.
- **Connectivity Checker**: Detects the device's network connection (Wi-Fi or Mobile Data) and displays a "No Connection" screen when offline.
- **Custom Error Handling**: Gracefully handles payment failures, cancellations, and connection issues with user-friendly feedback.

---

## 🛠️ Technologies & Tools

- **Flutter**: The UI framework used for building the app.
- **Dart**: Programming language for Flutter.
- **eSewa SDK**: SDK for integrating the eSewa payment gateway.
- **Khalti SDK**: SDK for integrating the Khalti payment gateway.
- **Connectivity Plus**: For detecting the network connection status.
- **Lottie**: Animation package for loading illustrations (e.g., No Internet connection screen).
- **Google Fonts**: Custom fonts for an enhanced UI experience.

---

## ⚙️ Installation

To run this project locally, follow these steps:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/DevSumanP/Payment-Gateway-Integration.git
   ```

2. **Install Dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the app**:

   ```bash
   flutter run
   ```

---

## ⚡️ Usage

1. Launch the app, and you'll land on the Payment Options Screen.
2. Select either eSewa or Khalti to proceed with a test payment.
3. Based on your action, the app will notify you of a successful payment, failure, or cancellation.
4. If there’s no internet connection, the app will redirect you to the No Connection screen.

---

## 📂 Project Structure

```bash
payment_gateway_integration/
│
├── esewa_flutter_sdk/
│
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   ├── secret/
│   │   ├── service/
│   │   └── utils/
│   │
│   ├── features/
│   │   └── payment_option/
│   │       ├── logic/
│   │       │   ├── esewa_payment_services.dart
│   │       │   └── khalti_payment_services.dart
│   │       ├── presentation/
│   │       │   └── screen/
│   │       │       ├── no_connection_screen.dart
│   │       │       └── payment_option.dart
│   │
│   ├── widgets/
│   │
│   └── main.dart
```

---

## 📱 Screenshots

---

## 🌐 API and SDK Documentation

- [eSewa Developer Documentation](http://developer.esewa.com.np/pages/Flutter#overview)
- [Khalti Developer Documentation](https://docs.khalti.com/checkout/flutter/khalti-checkout/)

---

## 📝 eSewa SDK Integration Instructions

**Important:** Ensure your Flutter project is migrated to **Dart sound null safety**.

### Step-by-Step Guide:

### 1. Extract and Set Up SDK

1. Download the SDK from the provided link.
2. Extract the SDK zip file.
3. Copy the `esewa_flutter_sdk` folder into the root of your Flutter project.
4. Add the SDK path to the `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  esewa_flutter_sdk:
    path: ./esewa_flutter_sdk
```

5. Run the following command to install the SDK dependencies:

  ```bash
   flutter pub get
  ```

---

### iOS Configuration

**Important:** The iOS SDK supports **Xcode 15.4**. There are two different frameworks for release/App Store builds and simulator/testing builds.

1. **Select the correct iOS framework:**

    - For **release builds**: Copy the `ios` folder from the `IOS_RELEASE` directory to the `esewa_flutter_sdk` folder.
    - For **simulator/testing builds**: Copy the `ios` folder from the `IOS_SIMULATOR` directory to the `esewa_flutter_sdk` folder.

2. Open the terminal in your project’s `ios` folder and run the following command:

   ```bash
   pod install
   ```

3. Restart Xcode to avoid any `esewa_flutter_sdk` import errors.

**Note:** Your iOS app won't build for release/App Store if you use the framework designed for the simulator in production builds.

---

### Android Configuration

1. **Update the `AndroidManifest.xml`**:

    Go to the `android/app/src/main/AndroidManifest.xml` file and add the required internet permission inside the `<manifest>` tag:

    ```xml
    <uses-permission android:name="android.permission.INTERNET"/>
    ```

2. **Update Gradle and Kotlin versions**:

    Since the new Android SDK requires Gradle 7.0+:

    - In your project’s `android/build.gradle` file, add the following dependencies:

    ```groovy
    dependencies {
        classpath 'com.android.tools.build:gradle:7.0.2'
        classpath 'org.jetbrains.kotlin:kotlin-gradle-plugin:1.5.31'
    }
    ```

    - In `android/gradle/wrapper/gradle-wrapper.properties`, update the Gradle distribution URL:

    ```properties
    distributionUrl=https\://services.gradle.org/distributions/gradle-7.0.2-all.zip
    ```

3. **Sync your Gradle** and complete the setup.

---

Now your project is ready to integrate payments using eSewa on Android and iOS.

---
