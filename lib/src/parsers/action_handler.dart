// lib/src/parsers/action_handler.dart

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../models/widget_action.dart';

class ActionHandler {
  final BuildContext context;
  final FlutterSecureStorage secureStorage;

  ActionHandler(this.context) : secureStorage = const FlutterSecureStorage();

  void handleAction(WidgetAction action, [Map<String, dynamic>? params]) {
    switch (action) {
      case WidgetAction.showAlert:
        _showAlert(params);
        break;
      case WidgetAction.navigate:
        _navigate(params);
        break;
      case WidgetAction.updateState:
        _updateState(params);
        break;
      case WidgetAction.printMessage:
        _printMessage(params);
        break;
      case WidgetAction.logEvent:
        _logEvent(params);
        break;
      case WidgetAction.toggleVisibility:
        _toggleVisibility(params);
        break;
      case WidgetAction.openURL:
        _openURL(params);
        break;
      case WidgetAction.shareContent:
        _shareContent(params);
        break;
      case WidgetAction.copyToClipboard:
        _copyToClipboard(params);
        break;
      case WidgetAction.scanQRCode:
        _scanQRCode(params);
        break;
      case WidgetAction.pickImage:
        _pickImage(params);
        break;
      case WidgetAction.sendEmail:
        _sendEmail(params);
        break;
      case WidgetAction.makePhoneCall:
        _makePhoneCall(params);
        break;
      case WidgetAction.showSnackBar:
        _showSnackBar(params);
        break;
      case WidgetAction.launchMap:
        _launchMap(params);
        break;
      case WidgetAction.openWebView:
        _openWebView(params);
        break;
      case WidgetAction.refreshData:
        _refreshData(params);
        break;
      case WidgetAction.submitForm:
        _submitForm(params);
        break;
      case WidgetAction.validateInput:
        _validateInput(params);
        break;
      case WidgetAction.showDatePicker:
        _showDatePicker(params);
        break;
      case WidgetAction.showTimePicker:
        _showTimePicker(params);
        break;
      case WidgetAction.toggleTheme:
        _toggleTheme(params);
        break;
      case WidgetAction.toggleLanguage:
        _toggleLanguage(params);
        break;
      case WidgetAction.downloadFile:
        _downloadFile(params);
        break;
      case WidgetAction.uploadFile:
        _uploadFile(params);
        break;
      case WidgetAction.startTimer:
        _startTimer(params);
        break;
      case WidgetAction.stopTimer:
        _stopTimer(params);
        break;
      case WidgetAction.resetTimer:
        _resetTimer(params);
        break;
      case WidgetAction.incrementCounter:
        _incrementCounter(params);
        break;
      case WidgetAction.decrementCounter:
        _decrementCounter(params);
        break;
      case WidgetAction.toggleSwitch:
        _toggleSwitch(params);
        break;
      case WidgetAction.openSettings:
        _openSettings(params);
        break;
      case WidgetAction.logout:
        _logout(params);
        break;
      case WidgetAction.deleteItem:
        _deleteItem(params);
        break;
      case WidgetAction.archiveItem:
        _archiveItem(params);
        break;
      case WidgetAction.favoriteItem:
        _favoriteItem(params);
        break;
      case WidgetAction.unfavoriteItem:
        _unfavoriteItem(params);
        break;
      case WidgetAction.rateApp:
        _rateApp(params);
        break;
      case WidgetAction.contactSupport:
        _contactSupport(params);
        break;
      case WidgetAction.bookmarkPage:
        _bookmarkPage(params);
        break;
      case WidgetAction.unbookmarkPage:
        _unbookmarkPage(params);
        break;
      case WidgetAction.shareLocation:
        _shareLocation(params);
        break;
      case WidgetAction.toggleSound:
        _toggleSound(params);
        break;
      case WidgetAction.toggleNotifications:
        _toggleNotifications(params);
        break;
      case WidgetAction.showModalBottomSheet:
        _showModalBottomSheet(params, context);
        break;
      case WidgetAction.closeModal:
        _closeModal(params, context);
        break;
      default:
        print('Unhandled action: $action');
    }
  }

  /// Displays an alert dialog with the provided title and message.
  void _showAlert(Map<String, dynamic>? params) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(params?['title'] ?? 'Alert'),
        content: Text(params?['message'] ?? 'This is an alert dialog.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Navigates to the specified route.
  void _navigate(Map<String, dynamic>? params) {
    final route = params?['route'];
    if (route != null && route is String) {
      Navigator.pushNamed(context, route);
    } else {
      print('Navigation route is not provided or invalid.');
    }
  }

  /// Updates the state based on provided parameters.
  void _updateState(Map<String, dynamic>? params) {
    // Implement state update logic here, possibly using Provider, Bloc, etc.
    // Example:
    // final provider = Provider.of<MyProvider>(context, listen: false);
    // provider.updateData(params?['data']);
    print('UpdateState action triggered with params: $params');
  }

  /// Prints a message to the console.
  void _printMessage(Map<String, dynamic>? params) {
    final message = params?['message'] ?? 'Default message';
    print('PrintMessage: $message');
  }

  /// Logs an event (could integrate with analytics services).
  void _logEvent(Map<String, dynamic>? params) {
    final event = params?['event'] ?? 'Unknown event';
    // Implement logging logic here, e.g., Firebase Analytics
    print('LogEvent: $event');
  }

  /// Toggles the visibility of a widget (requires state management integration).
  void _toggleVisibility(Map<String, dynamic>? params) {
    // Implement visibility toggle logic here, possibly using Provider or another state management solution.
    // Example:
    // final visibilityProvider = Provider.of<VisibilityProvider>(context, listen: false);
    // visibilityProvider.toggle(params?['widgetId']);
    print('ToggleVisibility action triggered with params: $params');
  }

  /// Opens a URL in the external browser.
  void _openURL(Map<String, dynamic>? params) async {
    final urlString = params?['url'];
    if (urlString != null && urlString is String) {
      final Uri url = Uri.parse(urlString);
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        print('Could not launch URL: $urlString');
      }
    } else {
      print('URL is not provided or invalid.');
    }
  }

  /// Shares content using the share_plus package.
  void _shareContent(Map<String, dynamic>? params) {
    final content = params?['content'] ?? 'Default content';
    Share.share(content);
  }

  /// Copies text to the clipboard and shows a SnackBar confirmation.
  void _copyToClipboard(Map<String, dynamic>? params) {
    final text = params?['text'] ?? '';
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Copied to clipboard')),
    );
  }

  /// Scans a QR code (requires integration with a QR code scanning package).
  void _scanQRCode(Map<String, dynamic>? params) {
    // Implement QR Code scanning logic here
    // Example using qr_code_scanner package:
    // Navigator.push(context, MaterialPageRoute(builder: (context) => QRViewExample()));
    print('ScanQRCode action triggered with params: $params');
  }

  /// Picks an image from the gallery or camera.
  void _pickImage(Map<String, dynamic>? params) async {
    final picker = ImagePicker();
    final source = (params?['source'] == 'camera') ? ImageSource.camera : ImageSource.gallery;
    try {
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        // Handle the picked image
        print('Image picked: ${pickedFile.path}');
        // You can pass the image path back or handle it as needed
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  /// Sends an email using the default email client.
  void _sendEmail(Map<String, dynamic>? params) async {
    final email = params?['email'];
    final subject = params?['subject'] ?? '';
    final body = params?['body'] ?? '';
    if (email != null && email is String) {
      final Uri uri = Uri(
        scheme: 'mailto',
        path: email,
        query: 'subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
      );
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        print('Could not launch email client.');
      }
    } else {
      print('Email is not provided or invalid.');
    }
  }

  /// Makes a phone call using the default dialer.
  void _makePhoneCall(Map<String, dynamic>? params) async {
    final phoneNumber = params?['phoneNumber'];
    if (phoneNumber != null && phoneNumber is String) {
      final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        print('Could not launch phone dialer.');
      }
    } else {
      print('Phone number is not provided or invalid.');
    }
  }

  /// Shows a SnackBar with a custom message.
  void _showSnackBar(Map<String, dynamic>? params) {
    final message = params?['message'] ?? 'Default SnackBar message';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  /// Launches the map application to a specific latitude and longitude.
  void _launchMap(Map<String, dynamic>? params) async {
    final latitude = params?['latitude'];
    final longitude = params?['longitude'];
    if (latitude != null && longitude != null) {
      final Uri uri = Uri.parse('https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        print('Could not launch maps.');
      }
    } else {
      print('Latitude or longitude is not provided.');
    }
  }

  /// Opens a WebView page to display a specified URL.
  void _openWebView(Map<String, dynamic>? params) {
    final url = params?['url'];
    if (url != null && url is String) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WebViewPage(url: url),
        ),
      );
    } else {
      print('URL is not provided or invalid.');
    }
  }

  /// Refreshes data, typically by re-fetching from a server or database.
  void _refreshData(Map<String, dynamic>? params) {
    // Implement data refresh logic here
    // Example:
    // final dataProvider = Provider.of<DataProvider>(context, listen: false);
    // dataProvider.refreshData();
    print('RefreshData action triggered with params: $params');
  }

  /// Submits a form with provided data.
  void _submitForm(Map<String, dynamic>? params) {
    // Implement form submission logic here
    // Example:
    // final formProvider = Provider.of<FormProvider>(context, listen: false);
    // formProvider.submitForm(params?['formData']);
    print('SubmitForm action triggered with params: $params');
  }

  /// Validates input data.
  void _validateInput(Map<String, dynamic>? params) {
    // Implement input validation logic here
    // Example:
    // final input = params?['input'];
    // if (input != null && input is String) {
    //   // Perform validation
    // }
    print('ValidateInput action triggered with params: $params');
  }

  /// Shows a date picker dialog.
  void _showDatePicker(Map<String, dynamic>? params) async {
    DateTime initialDate;
    DateTime firstDate;
    DateTime lastDate;
    try {
      initialDate = DateTime.parse(params?['initialDate'] ?? DateTime.now().toIso8601String());
    } catch (_) {
      initialDate = DateTime.now();
    }

    try {
      firstDate = DateTime.parse(params?['firstDate'] ?? DateTime(2000).toIso8601String());
    } catch (_) {
      firstDate = DateTime(2000);
    }

    try {
      lastDate = DateTime.parse(params?['lastDate'] ?? DateTime(2100).toIso8601String());
    } catch (_) {
      lastDate = DateTime(2100);
    }

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (pickedDate != null) {
      print('Date selected: $pickedDate');
      // Handle the selected date, e.g., update state or trigger another action
    }
  }

  /// Shows a time picker dialog.
  void _showTimePicker(Map<String, dynamic>? params) async {
    TimeOfDay initialTime;
    try {
      // Assuming params['initialTime'] is a string like "14:30"
      final timeParts = (params?['initialTime'] ?? '12:00').split(':');
      initialTime = TimeOfDay(hour: int.parse(timeParts[0]), minute: int.parse(timeParts[1]));
    } catch (_) {
      initialTime = TimeOfDay.now();
    }

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    if (pickedTime != null) {
      print('Time selected: $pickedTime');
      // Handle the selected time, e.g., update state or trigger another action
    }
  }

  /// Toggles the app's theme (light/dark).
  void _toggleTheme(Map<String, dynamic>? params) {
    // Implement theme toggling logic here, possibly using Provider or another state management solution
    // Example:
    // final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    // themeProvider.toggleTheme();
    print('ToggleTheme action triggered with params: $params');
  }

  /// Toggles the app's language.
  void _toggleLanguage(Map<String, dynamic>? params) {
    // Implement language toggling logic here, possibly using localization
    // Example:
    // final localeProvider = Provider.of<LocaleProvider>(context, listen: false);
    // localeProvider.toggleLanguage();
    print('ToggleLanguage action triggered with params: $params');
  }

  /// Downloads a file from a given URL to a specified path.
  void _downloadFile(Map<String, dynamic>? params) {
    final url = params?['url'];
    final savePath = params?['savePath'];
    if (url != null && url is String && savePath != null && savePath is String) {
      // Implement file download logic here, possibly using dio or http packages
      // Example with dio:
      // Dio().download(url, savePath).then((_) {
      //   print('File downloaded to $savePath');
      // }).catchError((e) {
      //   print('Error downloading file: $e');
      // });
      print('Downloading file from: $url to $savePath');
    } else {
      print('Download URL or savePath is not provided or invalid.');
    }
  }

  /// Uploads a file to a given URL.
  void _uploadFile(Map<String, dynamic>? params) {
    final filePath = params?['filePath'];
    final uploadUrl = params?['uploadUrl'];
    if (filePath != null && filePath is String && uploadUrl != null && uploadUrl is String) {
      // Implement file upload logic here, possibly using dio or http packages
      // Example with dio:
      // FormData formData = FormData.fromMap({
      //   'file': await MultipartFile.fromFile(filePath, filename: 'upload.png'),
      // });
      // Dio().post(uploadUrl, data: formData).then((response) {
      //   print('File uploaded successfully');
      // }).catchError((e) {
      //   print('Error uploading file: $e');
      // });
      print('Uploading file from: $filePath to $uploadUrl');
    } else {
      print('FilePath or UploadUrl is not provided or invalid.');
    }
  }

  Timer? _timer;

  /// Starts a timer for a specified duration in seconds.
  void _startTimer(Map<String, dynamic>? params) {
    final durationSeconds = params?['durationSeconds'] ?? 5;
    if (durationSeconds is int && durationSeconds > 0) {
      _timer = Timer(Duration(seconds: durationSeconds), () {
        print('Timer completed.');
        // Handle timer completion, e.g., show a notification or trigger another action
      });
      print('Timer started for $durationSeconds seconds.');
    } else {
      print('Invalid durationSeconds provided for startTimer.');
    }
  }

  /// Stops the currently running timer.
  void _stopTimer(Map<String, dynamic>? params) {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
      print('Timer stopped.');
    } else {
      print('No active timer to stop.');
    }
  }

  /// Resets the timer by stopping it.
  void _resetTimer(Map<String, dynamic>? params) {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
      print('Timer reset.');
      // Optionally, start a new timer if needed
      // _startTimer(params);
    } else {
      print('No active timer to reset.');
    }
  }

  /// Increments a counter (requires state management integration).
  void _incrementCounter(Map<String, dynamic>? params) {
    // Implement counter increment logic here, possibly using Provider or another state management solution
    // Example:
    // final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    // counterProvider.increment();
    print('IncrementCounter action triggered with params: $params');
  }

  /// Decrements a counter (requires state management integration).
  void _decrementCounter(Map<String, dynamic>? params) {
    // Implement counter decrement logic here, possibly using Provider or another state management solution
    // Example:
    // final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    // counterProvider.decrement();
    print('DecrementCounter action triggered with params: $params');
  }

  /// Toggles a switch (requires state management integration).
  void _toggleSwitch(Map<String, dynamic>? params) {
    // Implement switch toggle logic here, possibly using Provider or another state management solution
    // Example:
    // final switchProvider = Provider.of<SwitchProvider>(context, listen: false);
    // switchProvider.toggle();
    print('ToggleSwitch action triggered with params: $params');
  }

  /// Opens the settings page.
  void _openSettings(Map<String, dynamic>? params) {
    // Ensure that the '/settings' route is defined in your MaterialApp
    Navigator.pushNamed(context, '/settings');
    print('OpenSettings action triggered.');
  }

  /// Logs the user out by clearing secure storage and navigating to the login page.
  void _logout(Map<String, dynamic>? params) async {
    // Implement logout logic here, possibly clearing user data
    await secureStorage.deleteAll();
    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    print('Logout action triggered.');
  }

  /// Deletes an item with the provided itemId.
  void _deleteItem(Map<String, dynamic>? params) {
    final itemId = params?['itemId'];
    if (itemId != null) {
      // Implement item deletion logic here, e.g., call a service to delete the item from the database
      print('Deleting item with ID: $itemId');
    } else {
      print('Item ID is not provided.');
    }
  }

  /// Archives an item with the provided itemId.
  void _archiveItem(Map<String, dynamic>? params) {
    final itemId = params?['itemId'];
    if (itemId != null) {
      // Implement item archiving logic here, e.g., update the item's status in the database
      print('Archiving item with ID: $itemId');
    } else {
      print('Item ID is not provided.');
    }
  }

  /// Favorites an item with the provided itemId.
  void _favoriteItem(Map<String, dynamic>? params) {
    final itemId = params?['itemId'];
    if (itemId != null) {
      // Implement item favoriting logic here, e.g., add the item to the favorites list in the database
      print('Favoriting item with ID: $itemId');
    } else {
      print('Item ID is not provided.');
    }
  }

  /// Unfavorites an item with the provided itemId.
  void _unfavoriteItem(Map<String, dynamic>? params) {
    final itemId = params?['itemId'];
    if (itemId != null) {
      // Implement item unfavoriting logic here, e.g., remove the item from the favorites list in the database
      print('Unfavoriting item with ID: $itemId');
    } else {
      print('Item ID is not provided.');
    }
  }

  /// Prompts the user to rate the app (requires integration with a rating package).
  void _rateApp(Map<String, dynamic>? params) async {
    // Implement app rating logic here, possibly using a package like in_app_review
    // Example:
    // final InAppReview inAppReview = InAppReview.instance;
    // if (await inAppReview.isAvailable()) {
    //   inAppReview.requestReview();
    // }
    print('RateApp action triggered with params: $params');
  }

  /// Contacts support via email.
  void _contactSupport(Map<String, dynamic>? params) async {
    final email = params?['email'] ?? 'support@example.com';
    final subject = params?['subject'] ?? 'Support Request';
    final uri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=${Uri.encodeComponent(subject)}',
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print('Could not launch email client for support.');
    }
  }

  /// Bookmarks a page with the provided pageId.
  void _bookmarkPage(Map<String, dynamic>? params) {
    final pageId = params?['pageId'];
    if (pageId != null) {
      // Implement page bookmarking logic here, e.g., add the pageId to a list of bookmarks in the database
      print('Bookmarking page with ID: $pageId');
    } else {
      print('Page ID is not provided.');
    }
  }

  /// Unbookmarks a page with the provided pageId.
  void _unbookmarkPage(Map<String, dynamic>? params) {
    final pageId = params?['pageId'];
    if (pageId != null) {
      // Implement page unbookmarking logic here, e.g., remove the pageId from the list of bookmarks in the database
      print('Unbookmarking page with ID: $pageId');
    } else {
      print('Page ID is not provided.');
    }
  }

  /// Shares a location based on latitude and longitude.
  void _shareLocation(Map<String, dynamic>? params) async {
    final latitude = params?['latitude'];
    final longitude = params?['longitude'];
    if (latitude != null && longitude != null) {
      final location = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
      Share.share('Check out this location: $location');
    } else {
      print('Latitude or longitude is not provided.');
    }
  }

  /// Toggles sound settings (requires integration with a sound management package).
  void _toggleSound(Map<String, dynamic>? params) {
    // Implement sound toggling logic here, possibly using a sound management package like audioplayers or flutter_sound
    print('ToggleSound action triggered with params: $params');
  }

  /// Toggles notification settings (requires integration with a notifications package).
  void _toggleNotifications(Map<String, dynamic>? params) {
    // Implement notification toggling logic here, possibly using Firebase or local notifications
    print('ToggleNotifications action triggered with params: $params');
  }
}
void _showModalBottomSheet(Map<String, dynamic>? params, BuildContext context) {
  showModalBottomSheet(context: context, builder: (context) => params?['builder']);
  print('showModalBottomSheet action triggered.');
}

void _closeModal(Map<String, dynamic>? params, BuildContext context) {
  Navigator.pop(context);
  print('closeModal action triggered.');
}

/// Example WebViewPage implementation
class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure to add webview_flutter or a similar package in your pubspec.yaml
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse(url))
          ..setJavaScriptMode(JavaScriptMode.unrestricted),
      ),
      );
    
  }
}
