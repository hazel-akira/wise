import 'package:flutter/material.dart';
import 'package:learningdart/main.dart';
import 'package:learningdart/signup.dart';

class MonitoringPage extends StatelessWidget {
  const MonitoringPage({super.key});
  
  get debugShowCheckedModeBanner => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agro-Sense'),
        backgroundColor: const Color.fromARGB(255, 241, 242, 244),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu),
            onSelected: (String result) {
              switch (result) {
                case 'Home':
                  // Navigate to Home
   Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const HomeScreen()),
);
                  break;
                case 'Community':
                  // Navigate to Community
                  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const MonitoringPage()),
);
                  break;
                case 'Accounts':
                  // Navigate to Accounts
                  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SignUpPage()),
);
                  break;
                case 'Payments':
                  // Navigate to Payments
                  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SignUpPage()),
);
                  break;
                case 'Recommendations':
                  // Navigate to Recommendations
                  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SignUpPage()),
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
                value: 'Community',
                child: Text('Community'),
              ),
              const PopupMenuItem<String>(
                value: 'Accounts',
                child: Text('Accounts'),
              ),
              const PopupMenuItem<String>(
                value: 'Payments',
                child: Text('Payments'),
              ),
              const PopupMenuItem<String>(
                value: 'Recommendations',
                child: Text('Recommendations'),
              ),
            ],
          ),
        ],
      ),
      body:
 Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Farm monitoring dashboard',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 248, 248, 248),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildMonitoringInfo(),
                  buildChartCard('Chart for humidity'),
                  buildChartCard('Chart for Temperature'),
                  buildChartCard('Chart for moisture'),
                  buildChartCard('Chart for soil nutrients'),

                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(210, 54, 128, 238),
    );
  }

  Widget buildMonitoringInfo() {
    return const Card(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Monitoring',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Temperature'),
            Text('Humidity'),
            Text('Moisture'),
            Text('Soil Nutrients'),
          ],
        ),
      ),
    );
  }

  Widget buildChartCard(String title) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Expanded(
              child: Center(
                child: Icon(
                  Icons.hd,
                  size: 50,
                  color: Colors.blue,
                ), // Placeholder for charts
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MonitoringPage(),
  ));
}
