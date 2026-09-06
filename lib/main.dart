import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/magazineInfo.jpeg',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          print('Tu as cliqué dessus');
        },
        child: const Text('Click'),
      ),
    );
  }
}