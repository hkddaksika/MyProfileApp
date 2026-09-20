import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffeeeeee),
        body: Center(
          child: Container(
            width: 420,
            height: 820,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const ProfilePage(),
          ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int points = 0;

  void addPoint() {
    setState(() {
      points++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage(
                      'assets/images/avatar.png',
                    ),
                  ),

                  Positioned(
                    right: 0,
                    bottom: 5,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 38,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Divider(
              color: Colors.black,
              thickness: 2,
            ),

            const SizedBox(height: 20),

            const Text(
              'Name',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Diluka',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            const Text(
              'Email',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 10),
                Text(
                  'diluka.w@nsbm.ac.lk',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'Points',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.star),
                const SizedBox(width: 10),
                Text(
                  '$points',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: addPoint,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
