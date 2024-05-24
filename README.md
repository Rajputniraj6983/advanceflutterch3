
<h1 align="center"> Advance Flutter Chapter 3 💻</h1>

<h2 align="center">3.1 connectivity_plus package</h2>

Step 1.Add the connectivity_plus dependency to your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
 connectivity_plus: ^6.0.3
```
Then run flutter pub get to install the dependency.

### usage

Step 2.Import the connectivity_plus package in your Dart file:
```
import 'package:connectivity_plus/connectivity_plus.dart';
```

Step 3.Here’s a simple example of how to use connectivity_plus to monitor network connectivity in a Flutter app.

```dart
import 'package:connectivity_plus/connectivity_plus.dart';

final List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

// This condition is for demo purposes only to explain every connection type.
if (connectivityResult.contains(ConnectivityResult.mobile)) {
  print("Device is connected to WiFi.");
} else if (connectivityResult.contains(ConnectivityResult.wifi)) {
  print("Device is connected to cellular data.");
} else {
  print("No active network connection.");
}
```
<p align="center">
  <img src='https://github.com/Rajputniraj6983/advanceflutterch3/assets/143181391/e32bad1f-e56c-4276-88fc-8c1ee106cfb5' width = 300>&nbsp;&nbsp;&nbsp;&nbsp;
  <img src='https://github.com/Rajputniraj6983/advanceflutterch3/assets/143181391/2db4c361-0828-4f3b-a688-7283144ee059' width = 300>&nbsp;&nbsp;&nbsp;&nbsp;
 
 <div align="center">
    <video src="https://github.com/Rajputniraj6983/advanceflutterch3/assets/143181391/b44dbc35-3d48-4b67-be4d-20339ab3f187" width="400">
  </div></p>
  <div align="center">
    <a href="https://github.com/Rajputniraj6983/advanceflutterch3/tree/master/lib/Task_1/views">👉 📚 Go to dart file 📚 👈</a>
      Adv_Flutter_Ch1
  </div></p>


  ## 3.2 Chrome : flutter_inappwebview Package 

# flutter_inappwebview

`flutter_inappwebview` is a Flutter package that allows you to embed WebView widgets into your Flutter application with ease. It provides a comprehensive set of features and functionalities, enabling you to control web content dynamically.

## Installation

Run `flutter pub get` to install the package.

## Usage

Here's a simple example demonstrating how to use `InAppWebView` and control it using its methods: `goBack`, `goForward`, `reload`, and `loadUrl`.


```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Network'),
        ),
        body:InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
```

### Screenshots

<div align="center">
  <img src= "https://github.com/Rajputniraj6983/advanceflutterch3/assets/143181391/83317092-c0ce-4793-93c6-4c250ab87264" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/Rajputniraj6983/advanceflutterch3/assets/143181391/5d130c75-a40b-4b51-b5e8-f56c96cb8675" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

<div align="center">
  <a href='https://github.com/Rajputniraj6983/advanceflutterch3/tree/master/lib/Task_2'>👉 📱 Go to dart file 📱 👈</a>
</div>

 <div align="center">
    <video src="" width="400">
  </div></p>

### Video 


