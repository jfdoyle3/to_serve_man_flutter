import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //  User user = User('Jim', 'Doyle', 55);
    //recipe page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter first name',
              ),
            ),
            ElevatedButton(
              child: const Text('Go to second'),
              onPressed: () {
                // Pushed Named Route with Args
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: user,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
