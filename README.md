# Flutter Ad Player App

The Flutter Ad Player App is a mobile application developed using the Flutter framework, designed to seamlessly integrate and display ads within the app using the Unity Ads platform. This app provides a user-friendly interface for playing Unity ads and earning rewards.

![App Demo](demo.gif)

## Features

- Display Unity ads within the app.
- Earn rewards by watching Unity ads.
- Intuitive and user-friendly design.
- Seamless integration with Flutter UI.

## Getting Started

Follow these steps to set up the project on your local machine for development and testing.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Unity Ads Account: [Sign up for Unity Ads](https://unity.com/products/ads)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/flutter_ad_player_app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter_ad_player_app
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

4. Configure Unity Ads:

   - Sign in to your Unity Ads account.
   - Create a new placement for your app.
   - Obtain the Placement ID for the created placement.

5. Configure the Flutter app:

   - Open `lib/config.dart`.
   - Replace `'YOUR_PLACEMENT_ID'` with your Unity Ads Placement ID.

### Usage

Run the app on an emulator or a physical device:

```bash
flutter run
```

The app will launch on your device, providing an interface to watch Unity ads and earn rewards.

## Contributing

Contributions are welcome! If you encounter bugs or have suggestions for improvements, please submit an issue or a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- This app streamlines the process of integrating Unity ads into Flutter apps.
- Thanks to the Flutter and Unity Ads communities for their support and resources.

---