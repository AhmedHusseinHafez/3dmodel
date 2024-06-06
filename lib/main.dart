import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Ahmed Hussein')),
        body: Column(
          children: [
            const Text(
              'ahmed11h62@gmail.com',
            ),
            const SizedBox(height: 100),
            Center(
              child: SizedBox(
                height: 250,
                child: _3DModel(),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'BMW 3D MODEL',
            ),
          ],
        ),
      ),
    );
  }

  Widget _3DModel() {
    return const ModelViewer(
      backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
      src: 'assets/bmw_m4_f82.glb',
      alt: 'A 3D model of an astronaut',
      ar: true,
      arModes: ['quick-look'],
      autoRotate: true,
      disableZoom: false,
    );
  }
}
