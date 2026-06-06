import 'package:flutter/material.dart';

class ElementosUIWidget extends StatefulWidget {
  const ElementosUIWidget({super.key});

  @override
  State<ElementosUIWidget> createState() => _ElementosUIWidgetState();
}

class _ElementosUIWidgetState extends State<ElementosUIWidget> {
  double _fontSize = 38.0;
  bool _isBold = false;
  bool _isItalic = false;
  List<bool> _alignSelections = [false, true, false]; // [Izquierda, Centro, Derecha]
  Color _textColor = const Color.fromARGB(255, 25, 118, 210);

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
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: _alignSelections[0]
                  ? Alignment.centerLeft
                  : _alignSelections[2]
                      ? Alignment.centerRight
                      : Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Hola Flutter",
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _textColor,
                  fontWeight: _isBold ? FontWeight.bold : FontWeight.normal,
                  fontStyle: _isItalic ? FontStyle.italic : FontStyle.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "fontSize: ${_fontSize.toInt()}",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Slider(
                  value: _fontSize,
                  min: 10.0,
                  max: 100.0,
                  onChanged: (double value) {
                    setState(() {
                      _fontSize = value;
                    });
                  },
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
                      value: _isBold,
                      onChanged: (bool value) {
                        setState(() {
                          _isBold = value;
                        });
                      },
                    ),
                    const SizedBox(width: 30),
                    const Text("Italic: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Switch(
                      value: _isItalic,
                      onChanged: (bool value) {
                        setState(() {
                          _isItalic = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: ToggleButtons(
                    isSelected: _alignSelections,
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < _alignSelections.length; i++) {
                          _alignSelections[i] = i == index;
                        }
                      });
                    },
                    color: Colors.blue,
                    selectedColor: Colors.blue,
                    fillColor: Colors.blue.withOpacity(0.1),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _textColor = const Color.fromARGB(255, 229, 57, 53);
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 229, 57, 53),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black87, width: 1.5),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _textColor = const Color.fromARGB(255, 24, 24, 24);
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 24, 24),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black87, width: 1.5),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _textColor = const Color.fromARGB(255, 104, 159, 56);
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 104, 159, 56),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black87, width: 1.5),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _textColor = const Color.fromARGB(255, 25, 118, 210);
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 25, 118, 210),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black87, width: 1.5),
                        ),
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