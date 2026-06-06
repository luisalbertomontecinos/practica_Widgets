import 'package:flutter/material.dart';

class ElementosUIWidget extends StatelessWidget {
  const ElementosUIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Elementos UI",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 118, 210),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Hola Flutter",
                style: TextStyle(
                  fontSize: 38,
                  color: const Color.fromARGB(255, 25, 118, 210),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "fontSize: 38",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Slider(
                  value: 0.5,
                  onChanged: (double value) {},
                  activeColor: Colors.grey[500],
                  inactiveColor: Colors.grey[300],
                  thumbColor: Colors.white,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Bold: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Switch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                    const SizedBox(width: 30),
                    const Text("Italic: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Switch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: ToggleButtons(
                    isSelected: const [false, true, false], 
                    onPressed: (int index) {},
                    color: Colors.blue,
                    selectedColor: Colors.blue,
                    fillColor: Colors.blue,
                    borderColor: Colors.grey[200],
                    selectedBorderColor: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4),
                    constraints: const BoxConstraints(minHeight: 36, minWidth: 55),
                    children: const [
                      Icon(Icons.format_align_left),
                      Icon(Icons.format_align_center),
                      Icon(Icons.format_align_right),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Color:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 57, 53),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black87, width: 1.5),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 24, 24, 24),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black87, width: 1.5),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 104, 159, 56),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black87, width: 1.5),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 25, 118, 210),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black87, width: 1.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}