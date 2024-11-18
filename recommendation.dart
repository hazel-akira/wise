import 'package:flutter/material.dart';
import 'package:learningdart/main.dart';
import 'package:learningdart/monitoring.dart';
import 'package:learningdart/signup.dart';
import 'package:learningdart/dashboard.dart';
import 'package:learningdart/splash.dart';

// ignore: use_key_in_widget_constructors
class RecommendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecommendScreen(),
    );
  }
}

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
  int _selectedIndex = 2; // Default to the recommendation index

  // List of pages for navigation
  // ignore: unused_field
  final List<Widget> _pages = [
    const HomeScreen(),  // Placeholder Home Page
    // Placeholder Dashboard Page
    const RecommendScreen(),  // Current page
  ];

  // Handle bottom navigation bar item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agro-sense'),
        backgroundColor: Colors.blue[900],
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.jpg'), // Your logo asset
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, color: Colors.white),
            onSelected: (String result) {
              switch (result) {
                case 'Home':
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                  break;
                case 'Register':
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                  break;
                case 'Community':
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const DashboardPage()),
                  );
                  break;
                case 'Dashboard':
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                  break;
                case 'Recommendations':
                  // No action needed, we are already on Recommendations
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Home',
                child: Text('Home'),
              ),
              const PopupMenuItem<String>(
                value: 'Dashboard',
                child: Text('Dashboard'),
              ),
              const PopupMenuItem<String>(
                value: 'SignUp',
                child: Text('SignUp'),
              ),
              const PopupMenuItem<String>(
                value: 'Recommendations',
                child: Text('Recommendations'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Recommendations for Farmers',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Based on the soil analysis, we recommend the following actions to improve your crop yield:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              _buildRecommendationItem('1. Add Nitrogen-rich fertilizers'),
              _buildRecommendationItem('2. Ensure optimal moisture levels for maize'),
              _buildRecommendationItem('3. Increase potassium for better root strength'),
              _buildRecommendationItem('4. Monitor pH level regularly'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.recommend),
            label: 'Recommendations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
      ),
    );
  }

  // Helper method to create recommendation items
  Widget _buildRecommendationItem(String recommendation) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        recommendation,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}

class Dashboard {
  const Dashboard();
}
