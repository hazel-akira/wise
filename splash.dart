import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agrosense',
      debugShowCheckedModeBanner: false, // Debug banner removed here
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set the initial route to the splash screen
      home: const SplashScreen(),
      // Define the routes for navigation
      routes: {
        '/home': (context) => const HomeScreen(),  // Define the HomeScreen route
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Create a fade-in animation using CurvedAnimation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    // Start the animation
    _controller.forward();

    // Navigate to home screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 161, 70), // Set the splash screen background color
      body: Center(
        child: FadeTransition(
          opacity: _animation, // Use the correct animation for opacity
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display the app logo
               CircleAvatar(
                radius: 75, // Set the radius to adjust the size
                backgroundImage: AssetImage('assets/images/logo.jpg'),
              ),
              SizedBox(height: 20), // Add space between logo and text
              // Display the app name
              Text(
                'Agrosense',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the animation controller when the screen is closed
    _controller.dispose();
    super.dispose();
  }
}
