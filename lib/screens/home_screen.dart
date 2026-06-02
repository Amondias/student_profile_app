import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/student_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final student = const Student(
    name: "André Nang",
    email: "andre@gmail.com",
    major: "Informatique",
    level: "Bachelor 3",
  );

  bool isDarkMode = false;

  void contactStudent() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Message envoyé à ${student.name}",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
        isDarkMode ? Colors.grey.shade900 : Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Profil Étudiant"),
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StudentCard(student: student),

              const SizedBox(height: 20),

              ElevatedButton.icon(
                onPressed: contactStudent,
                icon: const Icon(Icons.mail),
                label: const Text("Contacter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}