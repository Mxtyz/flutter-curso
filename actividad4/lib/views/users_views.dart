import 'package:flutter/material.dart';

class UsersViewState extends StatefulWidget {
  const UsersViewState({super.key});

  @override
  State<UsersViewState> createState() => _UsersViewStateState();
}

class _UsersViewStateState extends State<UsersViewState> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Current users: $count'),
          FilledButton.tonal(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Icon(Icons.add))
        ],
      ),
    );
  }
}
