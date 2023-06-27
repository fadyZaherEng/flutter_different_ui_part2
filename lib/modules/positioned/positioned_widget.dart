import 'package:flutter/material.dart';

class PositionedScreen extends StatelessWidget {
  const PositionedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ), //AppBar
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 0.0,
              child: Icon(
                Icons.message,
                size: 128.0,
                color: Colors.greenAccent[400],
              ),
            ),
            const Positioned(
              top: 0,
              right: 200,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Text('24'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
