import 'package:flutter/material.dart';

class ColumnRowScreen extends StatelessWidget {
  const ColumnRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Column y Row",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue[600],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 202, 40),
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: const Text("A", style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 102, 187, 106),
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: const Text("B", style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                  Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 41, 98, 255),
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    alignment: Alignment.center,
                    child: const Text("C", style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Modo:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Spacer(),
                    const Text("Column", style: TextStyle(color: Colors.black87)),
                    Switch(
                      value: false,
                      onChanged: (val) {},
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey[300],
                    ),
                    const Text("Row", style: TextStyle(color: Colors.black87)),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "mainAxisAlignment",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "start",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFA0C4FF),
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "center",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "end",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "crossAxisAlignment:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "start",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFA0C4FF),
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "center",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E0E0),
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "end",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}