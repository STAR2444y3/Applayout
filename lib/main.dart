import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 233, 110, 229)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Página Principal'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.pinkAccent,
                child: const Text('Layout Superior'),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: const Text('Primeira coluna'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.redAccent,
                      child: const Text('Segunda coluna'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.greenAccent,
                      child: const Text('Terceira coluna'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 21, 206, 203),
                child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}

