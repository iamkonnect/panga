import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Property Title'),
        subtitle: Text('Property Description'),
      ),
    );
  }
}
