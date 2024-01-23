# Vanilla Traceability App

![image](https://github.com/alghanykennedy/Vanilla-Traceability-App-Development/assets/82708330/1ea7b79d-ff87-4dd8-81fe-165461f206a0)

## Description
This is a Traceability Application designed for Vanilla farmers in the supply chain. The app is built using the latest version of Flutter and utilizes the GetX CLI pattern for state management. Users can create accounts, log in, track the harvest supply from their fields to specific locations, access weather information, read the latest news, provide daily reports on harvest, fertilizer, and water usage. Users can also modify or add information to complete their profiles and engage in chats with other users or admins.

## Features

### 1. Splash Screen
This feature displays a visually appealing icon of Vanilla, providing feedback to users that the application is loading and enhancing the user experience during startup.

### 2. Onboarding Screen
The onboarding screens are the initial screens users see when launching the application, demonstrating how to use it, highlighting features, and explaining how the application can benefit users.

### 3. Login Screen
If you already have account or you success to signup, try to login glad to see you back.

### 4. Signup Screen
Users without accounts can create new ones for free, with a verification step before exploring the app.

### 5. Otp Screen
The OTP feature enhances security by ensuring that captured username/password pairs cannot be used multiple times.

### 6. Home Screen
The primary screen displaying information when the mobile device is started, featuring a group of icons for activating applications and internal functions.

### 7. Track Screen
Allows users to monitor and track the real-time movements, location, or status of an object or entity.

### 8. Map Address Screen
Enables users to view real-time maps or locations and select an address.

### 9. Consultation Screen
Displays all messages between two / more individuals.

### 10. Profile Screen
Contains various user information, including profile image, name, email, points or credits, and more.

### 11. Edit Profile Screen
Allows users to edit personal details and notification settings.

### Additional Validator
Ensures data submitted in forms is validated, with specific criteria such as:
 - An 8-character minimum password
 - Correct PIN of 1111

** Project Structure
```
|-- lib
    |-- app
        |-- core
            |-- widgets
            |-- global constant variables or classes
        |-- data
            |-- models
        |-- modules
            |-- features
                |-- bindings
                |-- controllers
                |-- views
        |-- routes (Code generated via package:get_cli/get_cli.dart)
            |-- app_pages
            |-- app_routes
    |-- main.dart
```

## How to Run the App

- Choose `dev` Branch
- Clone the repository
- Ensure you have Flutter last version installed and set up
- Run `flutter pub get` to fetch the project dependencies
- Use `flutter run` to start the application

  ## Technologies and Packages Used

- Flutter (latest version)
- [Figma](https://www.figma.com/file/7Kiy7knjFGe6UsPnbcTqLz/Vanilla-Traceability?type=design&t=y3JKKbXBht9VMnhR-6) UI/UX Design by me as the Author
- [GetX](https://github.com/jonataslaw/getx) for state management 
- [google_fonts](https://pub.dev/packages/google_fonts) - Flutter package to use fonts from fonts.google.com
- [another_stpper](https://pub.dev/packages/another_stepper) - A flutter package for easily customizable Horizontal and Vertical steppers
- [flutter_map](https://pub.dev/packages/flutter_map) - A versatile mapping package for Flutter
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) Flutter plugin for adapting screen and font size
- [flutter_svg](https://pub.dev/packages/flutter_svg) SVG rendering and widget library for Flutter
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) Package for updating Flutter app's launcher icon
- [intl](https://pub.dev/packages/intl) Provides internationalization and localization facilities
- [pininput](https://pub.dev/packages/pinput) Flutter package providing an easy-to-use and customizable Pin code input field
