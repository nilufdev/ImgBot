import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class BotChat extends StatefulWidget {
  const BotChat({super.key});

  @override
  State<BotChat> createState() {
    return _BotChatState();
  }
}

class _BotChatState extends State<BotChat> {
  // logic 
  PlatformFile? pickedImage;

  // pick image from file
  Future<void> pickImage() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      withData: true,
    );
    if(result != null) {
      setState(() {
        pickedImage = result.files.first;
      });
    }
  }
  
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
        backgroundColor: Colors.transparent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // select image
            GestureDetector(
              onTap: pickImage,
              child: pickedImage == null ? Container(
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
              : Column(
                  children: [
                    // display selected image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.memory(
                        pickedImage!.bytes!,
                        height: 340,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 10),

                    ElevatedButton(
                      style: ElavatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: pickImage,
                      child: const Text(
                        'Select New Image',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    
                  ],
              ),
            ),
            
            const SizedBox(height: 20),

            // prompt input
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your prompt here',
                prefixIcon: const Icon(Icons.pending, color: Colors.black),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            
            const SizedBox(height: 20),

            // generate button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {}, 
              child: const Text(
                'Generate Answer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),
          ]
        ),
      ),
    );
  }
}







