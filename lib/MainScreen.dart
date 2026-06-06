import 'package:flutter/material.dart';
import 'package:laboratorio/container_screen.dart';
import 'package:laboratorio/Column_Row.dart';
import 'package:laboratorio/Elementos_IU.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//AppBar...
        title: Text("Inicio"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    
      ),
      body: ListView(
        children: [
          ListTile(
            
            leading: Icon(Icons.star,color: const Color.fromARGB(255, 3, 3, 3),),
            title: Text("Pantalla_1"),
            subtitle: Text("container"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CounterScreen()),);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.podcasts,color: Colors.orange,),
            title: Text("Column y Row"),
            subtitle: Text("pantalla de inicio"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnRowScreen()),);
            },
          ),
          Divider(),
          
          ListTile(
            leading: Icon(Icons.screen_lock_landscape_outlined,color: Colors.blue,),
            title: Text("Elementos IU"),
            subtitle: Text("pantalla de inicio"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ElementosUIWidget()),);
            },
          ),
          Divider(),
          
        ],
      ), 
    );
  }
}