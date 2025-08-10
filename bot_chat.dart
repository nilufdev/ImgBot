import 'package:flutter/material.dart';

class BotChat extends StatefulWidget {
  const BotChat({super.key});

  @override
  State<BotChat> createState() {
    _BotChatState();
  }
}

class _BotChatState extends State<BotChat> {
  // logic 

  // ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Chat Bot',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ) ,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // image section
            GestureDetector(
              onTap: () {
                // todo
              }
              child: Container(
                height: 340,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Select an Image',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            
          ]
        ),
      ),
    );
  }
}







