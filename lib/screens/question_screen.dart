import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  RangeValues _priceRange = const RangeValues(500, 1000);
  String _selectedLocation = 'Near';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              'What is your budget',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Price Range    \$500 - \$10000',
              style: TextStyle(fontSize: 16),
            ),
            RangeSlider(
              values: _priceRange,
              min: 500,
              max: 10000,
              divisions: 19,
              labels: RangeLabels(
                '\$${_priceRange.start.round()}',
                '\$${_priceRange.end.round()}',
              ),
              onChanged: (RangeValues values) {
                setState(() => _priceRange = values);
              },
            ),
            const SizedBox(height: 40),
            const Text(
              'Where do you want to buy?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                ChoiceChip(
                  label: const Text('Near'),
                  selected: _selectedLocation == 'Near',
                  onSelected: (bool selected) {
                    setState(() => _selectedLocation = 'Near');
                  },
                ),
                const SizedBox(width: 20),
                ChoiceChip(
                  label: const Text('Outside'),
                  selected: _selectedLocation == 'Outside',
                  onSelected: (bool selected) {
                    setState(() => _selectedLocation = 'Outside');
                  },
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Skip'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    child: Text('Show Properties'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
