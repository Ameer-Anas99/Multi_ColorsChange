import 'package:flutter/material.dart';
import 'package:listcolors/controller/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MultiChanges>(
      builder: (context, pro, child) => Scaffold(
        backgroundColor: pro.colors[pro.currentindex],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(child: Text("My Page")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    pro.color();
                  },
                  child: const Text("Press"))
            ],
          ),
        ),
      ),
    );
  }
}
