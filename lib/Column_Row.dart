import 'package:flutter/material.dart';

class ColumnRowScreen extends StatelessWidget {
  const ColumnRowScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Column y Row"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: const Text("A")),
                  Container(child: const Text("B")),
                  Container(child: const Text("C")),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("Modo"),
                    const Spacer(),
                    const Text("Column"),
                    Switch(value: false, onChanged: (bool value) {}),
                    const Text("Row"),
                  ],
                ),
                const Text("mainAxisAlignment", textAlign: TextAlign.left,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: () {}, child: const Text("start")),
                    ElevatedButton(onPressed: () {}, child: const Text("center")),
                    OutlinedButton(onPressed: () {}, child: const Text("end")),
                  ],
                ),
                const Text("crossAxisAlignment", textAlign: TextAlign.left,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: () {}, child: const Text("start")),
                    ElevatedButton(onPressed: () {}, child: const Text("center")),
                    OutlinedButton(onPressed: () {}, child: const Text("end")),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}