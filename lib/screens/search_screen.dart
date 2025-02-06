import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    // Clear the search input
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Recent Searches
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Recent Searches',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(title: Text('Dar Es Salaam')),
                ListTile(title: Text('Arusha')),
                ListTile(title: Text('Dodoma')),
                ListTile(title: Text('Mwanza')),
                ListTile(title: Text('Zanzibar')),
              ],
            ),
          ),
          // Suggestions Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Explore',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(title: Text('Dar Es Salaam')),
                ListTile(title: Text('Arusha')),
                ListTile(title: Text('Dodoma')),
                ListTile(title: Text('Mwanza')),
                ListTile(title: Text('Zanzibar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
