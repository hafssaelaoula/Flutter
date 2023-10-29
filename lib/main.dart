import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => NameImagePage(),
        '/accueil': (context) => HomePage(),
      },
    );
  }
}

class NameImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Elaoula Hafssa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nom: Elaoula'),
            Text('Prénom: Hafssa'),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/accueil');
              },
              child: Image.asset('assets/image.png'), // Assurez-vous d'avoir une image nommée 'image.png' dans le répertoire 'assets'.
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page d\'Accueil'),
      ),
      body: Column(
        children: [
          Image.asset('assets/accueil_image.png'), // Ajoutez votre image d'accueil
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionPage(
                        icon: Icons.home,
                        description: 'Ceci est l\'icône Accueil.',
                      ),
                    ),
                  );
                },
                child: Icon(Icons.home, size: 50),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionPage(
                        icon: Icons.info,
                        description: 'Ceci est l\'icône Information.',
                      ),
                    ),
                  );
                },
                child: Icon(Icons.info, size: 50),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionPage(
                        icon: Icons.settings,
                        description: 'Ceci est l\'icône Paramètres.',
                      ),
                    ),
                  );
                },
                child: Icon(Icons.settings, size: 50),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DescriptionPage extends StatelessWidget {
  final IconData icon;
  final String description;

  DescriptionPage({required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 100),
            SizedBox(height: 20),
            Text(description),
          ],
        ),
      ),
    );
  }
}

