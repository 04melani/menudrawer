import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Elegante',
      theme: ThemeData(
        primaryColor: Colors.pink.shade200,
        scaffoldBackgroundColor: Colors.pink.shade50,
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.pink.shade700),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.grey.shade800),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.pink.shade300, // Texto del botón
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/description': (context) => ProjectDescriptionScreen(),
        '/options': (context) => OptionsScreen(),
      },
    );
  }
}

// Menú Drawer
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menú de Navegación', style: TextStyle(color: Colors.white, fontSize: 24)),
            decoration: BoxDecoration(
              color: Colors.pink.shade300,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text('Registro'),
            onTap: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Descripción del Proyecto'),
            onTap: () {
              Navigator.pushNamed(context, '/description');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Opciones'),
            onTap: () {
              Navigator.pushNamed(context, '/options');
            },
          ),
        ],
      ),
    );
  }
}

// Pantalla de bienvenida
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        backgroundColor: Colors.pink.shade300,
      ),
      drawer: AppDrawer(), // Agregar el Drawer aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¡Bienvenido!', style: Theme.of(context).textTheme.displayLarge),
            SizedBox(height: 20),
           
          ],
        ),
      ),
    );
  }
}

// Pantalla de login
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade300,
        elevation: 0,
      ),
      drawer: AppDrawer(), // Agregar el Drawer aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pantalla de Login', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/description'),
              child: Text('Ir a Descripción del Proyecto'),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de registro de usuarios
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuarios', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade300,
        elevation: 0,
      ),
      drawer: AppDrawer(), // Agregar el Drawer aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pantalla de Registro', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/options'),
              child: Text('Ir a Opciones'),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de descripción del proyecto
class ProjectDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descripción del Proyecto', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade300,
        elevation: 0,
      ),
      drawer: AppDrawer(), // Agregar el Drawer aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Aquí puedes leer sobre el proyecto.', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla de opciones
class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opciones', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade300,
        elevation: 0,
      ),
      drawer: AppDrawer(), // Agregar el Drawer aquí
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Explora las opciones.', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
