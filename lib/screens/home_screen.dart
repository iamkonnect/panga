import 'package:flutter/material.dart';
import '../widgets/property_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedFilterIndex = 4; // Default to "All Property"
  final List<String> filters = [
    'House', 'Apartment', 'Office', 'Land', 'All Property'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                _buildSearchBar(),
                const SizedBox(height: 20),
                _buildFilterChips(),
                const SizedBox(height: 20),
                _buildPropertySection(),
                const SizedBox(height: 20),
                _buildFeaturedPropertySection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello!', style: TextStyle(fontSize: 24)),
            Text('James Butler', 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        Icon(Icons.notifications_none, size: 30),
      ],
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildFilterChips() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return ChoiceChip(
            label: Text(filters[index]),
            selected: _selectedFilterIndex == index,
            onSelected: (selected) {
              setState(() => _selectedFilterIndex = selected ? index : 4);
            },
          );
        },
      ),
    );
  }

  Widget _buildPropertySection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('All Property', 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Text('See All'),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemBuilder: (context, index) => PropertyCard(
            title: 'Deluxe Apartment',
            price: '\$267,000',
            address: '2BW Street NY, New York',
            beds: 4,
            baths: 3,
            kitchens: 1,
            sqft: '2000 sqft',
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedPropertySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Featured Property',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 15),
        SizedBox(
          height: 280,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemBuilder: (context, index) => _buildFeaturedPropertyCard(),
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedPropertyCard() {
    return Container(
      width: 200,
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
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(height: 10),
          const Text('Dup Apartment',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text('\$267,000',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 5),
          const Text('28W Street, NY, New York',
              style: TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 5),
          const Row(
            children: [
              Text('2000 sqft', style: TextStyle(fontSize: 12)),
              Spacer(),
              Text('3', style: TextStyle(fontSize: 12)),
              Icon(Icons.bathtub, size: 14),
              SizedBox(width: 5),
              Text('4', style: TextStyle(fontSize: 12)),
              Icon(Icons.bed, size: 14),
            ],
          ),
        ],
      ),
    );
  }
}
