import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextField() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    );
  }

  static TextStyle lightTextField() {
    return const TextStyle(
      color: Colors.black38,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter',
    );
  }
}
