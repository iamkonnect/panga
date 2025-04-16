import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final String title;
  final String price;
  final String address;
  final int beds;
  final int baths;
  final int kitchens;
  final String sqft;

  const PropertyCard({
    super.key,
    required this.title,
    required this.price,
    required this.address,
    required this.beds,
    required this.baths,
    required this.kitchens,
    required this.sqft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(price,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          Text(address, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildPropertyDetail(Icons.bed, '\$beds Bed'),
              _buildPropertyDetail(Icons.bathtub, '\$baths Bath'),
              _buildPropertyDetail(Icons.kitchen, '\$kitchens Kitchen'),
              _buildPropertyDetail(Icons.aspect_ratio, sqft),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPropertyDetail(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.grey),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
