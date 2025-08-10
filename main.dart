import 'package:flutter/material.dart';
import 'bot_chat.dart';

void main() {
  runApp(const ImgBot());
}

class ImgBot extends StatelessWidget {
  const ImgBot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BotChat(),
    );
  }
}
