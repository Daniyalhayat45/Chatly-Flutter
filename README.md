# 💬 Chatly — WhatsApp UI Clone

A simple **WhatsApp-inspired chat application UI** built with **Flutter**.

This project is made for learning and practicing basic Flutter concepts such as widgets, `ListView`, `ListTile`, screen navigation, and static UI design.

## 📱 Features

* WhatsApp-inspired interface
* Static chat list
* Multiple chat contacts
* Clickable chat conversations
* Reusable conversation screen
* Static messages
* WhatsApp-style message bubbles
* Message input field
* Send button UI
* Green WhatsApp-inspired theme
* Simple navigation using `Navigator.push()` and `Navigator.pop()`

## 🧭 Navigation

```text
Chat List
    │
    ├── Ali
    │    └── Conversation
    │
    ├── Ahmed
    │    └── Conversation
    │
    ├── Hamza
    │    └── Conversation
    │
    └── Other Chats
         └── Conversation
```

Every chat in the main list is clickable and opens the same conversation layout with the selected contact's name.

## 🛠️ Technologies

* Flutter
* Dart
* Material UI
* Navigator
* ListView
* ListTile
* StatelessWidget

## 📂 Project Structure

```text
lib/
│
├── main.dart
│
└── chat.dart
```

### `main.dart`

Starts the Flutter application and opens the main `Chat` page.

### `chat.dart`

Contains:

* Main chat list
* Conversation screen
* Message bubbles
* Static chat data

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Daniyalhayat45/Chatly-Flutter.git
```

### 2. Open the project

```bash
cd Chatly-Flutter
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

## 🎯 Purpose

This project is a beginner-friendly Flutter project created to understand:

* Flutter widget structure
* Building layouts with `Scaffold` and `AppBar`
* Creating lists with `ListView.builder`
* Using `ListTile`
* Passing data between screens
* Navigating between screens
* Creating reusable widgets
* Designing a mobile chat interface

## 🔮 Future Improvements

Possible future additions:

* Real-time messaging
* Firebase authentication
* Firebase database
* Profile pictures
* Online/offline status
* Message timestamps
* Read receipts
* Voice messages
* Image sharing
* Push notifications
* Chat search

## ⚠️ Disclaimer

This is an **educational WhatsApp-inspired UI project** and is not affiliated with, sponsored by, or endorsed by WhatsApp or Meta.

## 👨‍💻 Developer

**Daniyal Hayat**

Built with ❤️ using Flutter.
