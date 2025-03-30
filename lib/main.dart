import 'package:flutter/material.dart';

void main() {
  runApp(const HeroAnimationApp());
}

class HeroAnimationApp extends StatelessWidget {
  const HeroAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlowerFirstScreen(),
    );
  }
}

class FlowerFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Transition - First Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'flower-image',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.pexels.com/photos/34950/pexels-photo.jpg',
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlowerSecondScreen()),
                );
              },
              child: Text("View Larger Image"),
            ),
          ],
        ),
      ),
    );
  }
}

class FlowerSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Transition - Second Page")),
      body: Center(
        child: Hero(
          tag: 'flower-image',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.network(
              'https://images.pexels.com/photos/34950/pexels-photo.jpg',
              width: 320,
              height: 320,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
