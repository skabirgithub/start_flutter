import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Second Page'),
      ),
      drawer: const NavigationDrawer(
        children: [
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('asset/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),

          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),

          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),

          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('asset/images/cover.jpg'))),
            ),
            const Text('This is the Second Page'),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
    );
  }
}
