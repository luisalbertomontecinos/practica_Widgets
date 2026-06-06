import 'package:flutter/material.dart';
class ElementosUIWidget extends StatelessWidget {
  const ElementosUIWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Elementos UI"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text("Hola Flutter"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text("fontSize: 38"),
                Slider(
                  value: 0.5,
                  onChanged: (double value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Text("Bold"),
                        Switch(value: false, onChanged: (bool value) {}),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("italic"),
                        Switch(value: false, onChanged: (bool value) {}),
                      ],
                    ),
                  ],
                ),
                ToggleButtons(
                  isSelected: const [true, false, false],
                  onPressed: (int index) {},
                  children: const [
                    Icon(Icons.format_align_left),
                    Icon(Icons.format_align_center),
                    Icon(Icons.format_align_right),
                  ],
                ),
                const Text("Color"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                     
                    ),
                    Container(
                      
                    ),
                    Container(

                    ),
                    Container(
                      
                    ),
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