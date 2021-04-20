import 'package:flutter/material.dart';

enum MessageCardType {
  info,
  error,
}

/// Naive widget to be an example of a little bit more
/// complex widget that can contain different modes
class MessageCard extends StatelessWidget {
  final String message;
  final MessageCardType type;

  final Color errorColor;
  final Color infoColor;

  MessageCard({
    required this.message,
    required this.type,
    this.errorColor = const Color(0xFFCC6941),
    this.infoColor = const Color(0xFF5E89FF),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(message),
      color: type == MessageCardType.info ? infoColor : errorColor,
    );
  }
}
