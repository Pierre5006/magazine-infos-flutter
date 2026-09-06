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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/magazineInfo.jpeg'),
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            PartieRubrique(),
          ],
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

// ==================== WIDGETS PERSONNALISÉS ====================

// 1. PartieTitre
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Découvrez le Numérique',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            'Le magazine de la tech',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// 2. PartieTexte
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.only(top: 15.0, bottom: 20.0),
      child: const Text(
        'Magazine Infos est votre source d\'information pour tout ce qui concerne '
        'le développement mobile, le web et les nouvelles technologies. '
        'Plongez dans nos rubriques pour rester à jour.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14.0,
          height: 1.5,
        ),
      ),
    );
  }
}

// 3. PartieIcone
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconeAction(Icons.phone, 'TEL'),
          _buildIconeAction(Icons.email, 'MAIL'),
          _buildIconeAction(Icons.share, 'PARTAGE'),
        ],
      ),
    );
  }

  Widget _buildIconeAction(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.pink, size: 30.0),
        const SizedBox(height: 5.0),
        Text(
          label,
          style: const TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}

// 4. PartieRubrique
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildRoundedImage('assets/images/rubrique1.jpeg'),
          _buildRoundedImage('assets/images/rubrique2.jpg'),
        ],
      ),
    );
  }

  Widget _buildRoundedImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        imagePath,
        width: 140.0,
        height: 100.0,
        fit: BoxFit.cover,
      ),
    );
  }
}