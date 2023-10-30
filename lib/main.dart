import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu Resto ',
          style: TextStyle(fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'lonceng',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('tebak huruf')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'lonceng',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('tebak huruf')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              "Resto Pati",
              style:
                  TextStyle(fontSize: 20), // Customize the text style as needed
            ),
          ),
          Center(
            child: Text(
              "Jl pegangsaan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ), // Customize the text style as needed
            ),
          ),
          const Row(
            children: <Widget>[
              const Image(
                width: 50, // Set the width to your desired value
                height: 50, // Set the height to your desired value
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Expanded(
                child: Text('Martabak', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Rp 25.000', textAlign: TextAlign.center),
              ),
            ],
          ),
          const Row(
            children: <Widget>[
              const Image(
                width: 50, // Set the width to your desired value
                height: 50, // Set the height to your desired value
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Expanded(
                child: Text('Bakso', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Rp 15.000', textAlign: TextAlign.center),
              ),
            ],
          ),
          const Row(
            children: <Widget>[
              const Image(
                width: 50, // Set the width to your desired value
                height: 50, // Set the height to your desired value
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Expanded(
                child: Text('Nasi Goreng', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Rp 15.000', textAlign: TextAlign.center),
              ),
            ],
          ),
          const Row(
            children: <Widget>[
              const Image(
                width: 50, // Set the width to your desired value
                height: 50, // Set the height to your desired value
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Expanded(
                child: Text('Mie Ayam', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Rp 10.000', textAlign: TextAlign.center),
              ),
            ],
          ),
          const Row(
            children: <Widget>[
              const Image(
                width: 50, // Set the width to your desired value
                height: 50, // Set the height to your desired value
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Expanded(
                child: Text('Ikan Bakar', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Rp 26.000', textAlign: TextAlign.center),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Define the action to be taken when the button is pressed.
                  // You can put your code here.
                },
                child: Text('Order'), // The text displayed on the button.
              ),
            ],
          ),
        ],
      ),
    );
  }
}
