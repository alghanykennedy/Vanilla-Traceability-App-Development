# Vanilla Traceability App

![image](https://github.com/alghanykennedy/Vanilla-Traceability-App-Development/assets/82708330/1ea7b79d-ff87-4dd8-81fe-165461f206a0)

Traceability Application for Farmers Vanilla supply Chain. This application built with Flutter 3.0 and powered by the GetX CLI pattern for state management. This app allows user to create account, login, tracking harvest supply from their field to point location, information about weather, latest news, daily reporting, harvest, fertilizer, & water, than user can change or add information for completed their profile and last user can chat with other user or admin.

## Features

### 1. Splash Screen
This feature shows user beautiful and meaningful icon vanilli. The purpose of a splash screen is to provide visual feedback to the user that the application is loading and to enhance the user experience during the startup process.

### 2. Onboarding Screen
The onboarding screens are the first things that the users see when they launch your application. It's sometimes known as first user experience (FUX). It is usually used to demonstrate some facts about the application such as how to use it, the application features, and how the application can help the users.

### 3. Login Screen
If you already have account or you success to signup, try to login glad to see you back.

### 4. Signup Screen
Don't have account? Don't worry just create new one, it's free! But user need to verification first before can explore this app.

### 5. Otp Screen
The OTP feature prevents some forms of identity theft by making sure that a captured username/password pair cannot be used a second time.

### 6. Home Screen
The first screen of information displayed when a mobile device is started. Also called the "home screen" and "main menu," it typically displays a group of icons that are clicked or tapped to activate applications and internal functions.

### 7. Track Screen
Allowing users to monitor and track the movements, location, or status of an object or entity in real-time.

### 8. Map Address Screen
Allows the user to see map or location in real-time and select an address.

### 9. Consultation Screen
Where all the messages between two people are displayed.

### 10. Profile Screen
Profile screen contains various things on it. That may be Profile Image of the user, name of the user, email or some other ids of the user, points or credits and many more things that may be secret or can be shown to anyone.

### 11. Edit Profile Screen
The Edit profile screen allows you to edit your personal details and notification settings, and contains profile fields configured during the company on-boarding process.

** Project Structure
```
|-- lib
    |-- app
        |-- core
            |-- widgets
            |-- global constant variable or class
        |-- data
            |-- models
        |-- modules
            |-- features
                |-- bindings
                |-- controllers
                |-- views
        |-- routes (This is code generated via package:get_cli/get_cli.dart)
            |-- app_pages
            |-- app_routes
    |-- main.dart
```

## How to Run the App

- Choose *dev* Branch
- Clone the repository
- Ensure you have Flutter last version installed and set up
- Run `flutter pub get` to fetch the project dependencies
- Use `flutter run` to start the application

  ## Technologies and Packages Used

- Flutter latest version
- [Figma](https://www.figma.com/file/7Kiy7knjFGe6UsPnbcTqLz/Vanilla-Traceability?type=design&t=y3JKKbXBht9VMnhR-6) UI/UX by me
- [GetX](https://github.com/jonataslaw/getx) for state management 
- [google_fonts](https://pub.dev/packages/google_fonts) A Flutter package to use fonts from fonts.google.com
- [another_stpper](https://pub.dev/packages/another_stepper) A flutter package to create easily customizable Horizontal and Vertical stepper
- [flutter_map](https://pub.dev/packages/flutter_map) A versatile mapping package for Flutter. Simple and easy to learn, yet completely customizable and configurable, it's the best choice for mapping in your Flutter app
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) A flutter plugin for adapting screen and font size.Let your UI display a reasonable layout on different screen sizes
- [flutter_svg](https://pub.dev/packages/flutter_svg) An SVG rendering and widget library for Flutter, which allows painting and displaying Scalable Vector Graphics 1.1 files
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) A package which simplifies the task of updating your Flutter app's launcher icon
- [intl](https://pub.dev/packages/intl) Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text
- [pininput](https://pub.dev/packages/pinput) Flutter Pinput is a package that provides an easy-to-use and customizable Pin code input field
