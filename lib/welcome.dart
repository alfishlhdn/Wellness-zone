import 'package:flutter/material.dart';
import 'package:aplikasi/home.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white, // Ubah background menjadi putih
        child: Center(
          child: Image.asset(
            "images/sehat.png",
            width: 200, // Ukuran gambar tetap proporsional
            height: 200,
          ),
        ),
      ),
    );
  }
}
