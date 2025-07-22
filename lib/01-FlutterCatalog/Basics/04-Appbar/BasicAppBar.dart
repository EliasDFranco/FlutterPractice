import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("App Bar Random"),
        leading: const Icon(Icons.dark_mode),
        actions: [
          IconButton(
            icon: const Icon(Icons.date_range_rounded),
            onPressed: () {},
          ),
          PopupMenuButton(itemBuilder: (BuildContext context){
            return [
              const PopupMenuItem(child: Text("Dark Mode")),
              const PopupMenuItem(child: Text("Calendar")),
            ];
          }),
        ],
      ),
      body: const Center(child: Text("Hello my bro"),),
    );
  }
}
