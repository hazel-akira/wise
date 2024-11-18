import 'package:flutter/material.dart';
import 'package:learningdart/dashboard.dart';
import 'package:learningdart/monitoring.dart';
import 'package:learningdart/recommendation.dart';
import 'package:learningdart/signup.dart';
import 'package:learningdart/splash.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // Debug banner removed
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<HomePage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agro-sense', style: TextStyle(color: Color.fromARGB(255, 247, 249, 247))),  // Title color changed to green
        backgroundColor:const Color.fromARGB(255, 13, 161, 70),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.jpg'), // logo asset
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, color: Colors.white),
            onSelected: (String result) {
              switch (result) {
                case 'Home':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                  break;
                case 'Register':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                  break;
                case 'Community':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                  break;
                case 'Dashboard':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DashboardPage()),
                  );
                  break;
                case 'Recommendations':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecommendPage()),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Home',
                child: Text('Home'),
              ),
              const PopupMenuItem<String>(
                value: 'Register',
                child: Text('Register'),
              ),
              const PopupMenuItem<String>(
                value: 'Community',
                child: Text('Community'),
              ),
              const PopupMenuItem<String>(
                value: 'dashboard',
                child: Text('Dashboard'),
              ),
              const PopupMenuItem<String>(
                value: 'Recommendations',
                child: Text('Recommendations'),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 13, 141, 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 300,
              child: Image.asset(
                'assets/images/soil.png', // background image asset
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'GROW BETTER WITH SMART INSIGHTS',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 9, 118, 51),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 241, 234, 234),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 4,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  children: const [
                    DashboardItem(
                      color: Colors.grey,
                      icon: Icons.agriculture,
                      title: 'Soil Analysis',
                      subtitle: 'Visualize the soil nutrients (NPK)',
                    ),
                    DashboardItem(
                      color: Colors.grey,
                      icon: Icons.water_drop,
                      title: 'Moisture Monitoring',
                      subtitle: 'Live Soil Moisture Levels',
                    ),
                    DashboardItem(
                      color: Colors.grey,
                      icon: Icons.opacity,
                      title: 'Humidity Monitoring',
                      subtitle: 'Get real-time data on soil moisture levels',
                    ),
                    DashboardItem(
                      color: Colors.grey,
                      icon: Icons.device_thermostat,
                      title: 'Temperature Monitoring',
                      subtitle: 'Real-Time Temperature Tracking',
                    ),
                  ],
                ),
              ),
            ),
          ],
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
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:  const Color.fromARGB(255, 9, 118, 51),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}


class SignupPage {
  const SignupPage();
}

class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const DashboardItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required MaterialColor color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color:  const Color.fromARGB(255, 9, 118, 51),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.green)),  // Title color changed to green
        backgroundColor:const Color.fromARGB(255, 13, 161, 70),
      ),
      body: const Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}

/* ignore: use_key_in_widget_constructors
class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User', style: TextStyle(color: Colors.green)),  // Title color changed to green
        backgroundColor: Colors.blue[900],
      ),
      body: const Center(
        child: Text('User Page Content'),
      ),
    );
  }
}*/
