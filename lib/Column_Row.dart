import 'package:flutter/material.dart';

class ColumnRowScreen extends StatefulWidget {
  const ColumnRowScreen({super.key});

  @override
  State<ColumnRowScreen> createState() => _ColumnRowScreenState();
}

class _ColumnRowScreenState extends State<ColumnRowScreen> {
  // Variables de estado requeridas para la Fase 4
  bool _isRow = false;
  MainAxisAlignment _mainAlignment = MainAxisAlignment.center;
  CrossAxisAlignment _crossAlignment = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FA),
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
              child: _isRow
                  ? Row(
                      mainAxisAlignment: _mainAlignment,
                      crossAxisAlignment: _crossAlignment,
                      children: [
                        Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFCA28),
                            border: Border.all(color: Colors.black87, width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text("A", style: TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        Container(
                          width: 100,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color(0xFF66BB6A),
                            border: Border.all(color: Colors.black87, width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text("B", style: TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2962FF),
                            border: Border.all(color: Colors.black87, width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text("C", style: TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: _mainAlignment,
                      crossAxisAlignment: _crossAlignment,
                      children: [
                        Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFCA28),
                            border: Border.all(color: Colors.black87, width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text("A", style: TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        Container(
                          width: 100,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color(0xFF66BB6A),
                            border: Border.all(color: Colors.black87, width: 1),
                          ),
                          alignment: Alignment.center,
                          child: const Text("B", style: TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF2962FF),
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
                      value: _isRow,
                      onChanged: (val) {
                        setState(() {
                          _isRow = val;
                        });
                      },
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _mainAlignment = MainAxisAlignment.start;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _mainAlignment == MainAxisAlignment.start ? const Color(0xFFA0C4FF) : const Color(0xFFE0E0E0),
                          border: Border.all(color: Colors.black54, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "start",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _mainAlignment = MainAxisAlignment.center;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _mainAlignment == MainAxisAlignment.center ? const Color(0xFFA0C4FF) : const Color(0xFFE0E0E0),
                          border: Border.all(color: Colors.black54, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "center",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _mainAlignment = MainAxisAlignment.end;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _mainAlignment == MainAxisAlignment.end ? const Color(0xFFA0C4FF) : const Color(0xFFE0E0E0),
                          border: Border.all(color: Colors.black54, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "end",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _crossAlignment = CrossAxisAlignment.start;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _crossAlignment == CrossAxisAlignment.start ? const Color(0xFFA0C4FF) : const Color(0xFFE0E0E0),
                          border: Border.all(color: Colors.black54, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "start",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _crossAlignment = CrossAxisAlignment.center;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _crossAlignment == CrossAxisAlignment.center ? const Color(0xFFA0C4FF) : const Color(0xFFE0E0E0),
                          border: Border.all(color: Colors.black54, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "center",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _crossAlignment = CrossAxisAlignment.end;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _crossAlignment == CrossAxisAlignment.end ? const Color(0xFFA0C4FF) : const Color(0xFFE0E0E0),
                          border: Border.all(color: Colors.black54, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "end",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
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