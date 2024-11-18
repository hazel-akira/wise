/*import 'package:flutter/material.dart';
import 'package:learningdart/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agro-sense'),
        backgroundColor: Colors.blue[900],
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/logo.jpg'), //  logo asset
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Implement your menu action here
            },
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(226, 5, 61, 124),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                'assets/images/soil.png', //  your background image asset here
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'GROW BETTER WITH SMART INSIGHTS',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
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
                  backgroundColor: const Color.fromARGB(255, 54, 141, 241),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
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
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  children: const [
                    DashboardItem(
                      icon: Icons.agriculture,
                      title: 'Soil Analysis',
                      subtitle: 'Visualize the soil nutrients (NPK)',
                    ),
                    DashboardItem(
                      icon: Icons.water_drop,
                      title: 'Moisture Monitoring',
                      subtitle: 'Live Soil Moisture Levels',
                    ),
                    DashboardItem(
                      icon: Icons.opacity,
                      title: 'Humidity Monitoring',
                      subtitle: 'Get real-time data on soil moisture levels',
                    ),
                    DashboardItem(
                      icon: Icons.device_thermostat,
                      title: 'Temperature Monitoring',
                      subtitle: 'Real-Time Temperature Tracking',
                    ),
                  ],
                ),
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
                  backgroundColor: const Color.fromARGB(255, 54, 141, 241),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 154, 139, 139),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
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
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
    );
  }
}

class _onItemTapped {
}

// ignore: camel_case_types
class _selectedIndex {
}

class DashboardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const DashboardItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[700],
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
*/
