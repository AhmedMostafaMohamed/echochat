import 'package:echochat/presentation/widgets/starting_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Show the first bottom sheet when the page loads
    Future.delayed(Duration.zero, () {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => StartingWidget(),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE91E63),
              Color(0xFF3F51B5),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/icons/main_logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstBottomSheet extends StatelessWidget {
  final VoidCallback onNameEntered;

  const FirstBottomSheet({Key? key, required this.onNameEntered}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Enter your name'),
          TextField(
            decoration: InputDecoration(hintText: 'Your name'),
            onSubmitted: (_) {
              onNameEntered(); // Call the callback to show the second bottom sheet
            },
          ),
          ElevatedButton(
            onPressed: onNameEntered,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class SecondBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Second Bottom Sheet'),
          // Add content for the second bottom sheet here
        ],
      ),
    );
  }
}
