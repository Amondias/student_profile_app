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
    name: "Aminata Diallo",
    email: "aminata@gmail.com",
    major: "Informatique",
    level: "Bachelor 3",
  );

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
      appBar: AppBar(
        title: const Text("Profil Étudiant"),
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