import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentCard extends StatelessWidget {
  final Student student;

  const StudentCard({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 161, 161, 161),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              student.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(Icons.email),
                const SizedBox(width: 10),
                Text(student.email),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(Icons.school),
                const SizedBox(width: 10),
                Text(student.major),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(Icons.workspace_premium),
                const SizedBox(width: 10),
                Text(student.level),
              ],
            ),
          ],
        ),
      ),
    );
  }
}