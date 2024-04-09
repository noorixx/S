import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> categories = ['1', '2', '3'];
  List<String> locations = [
    'Manama',
    'Riffa',
    'Muharraq',
    'Hamad Town',
    'Aali',
    'Isa Town',
    'Sitra',
    'Budaiya',
    'Jidhafs',
    'Al-Malikiyah'
  ];

  String selectedCategory =
      '1'; // Set an initial value from the categories list
  String selectedLocation = 'Manama';

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    String searchQuery = searchController.text;
                    // Perform search based on selected category, location, and search query
                    performSearch(
                        selectedCategory, selectedLocation, searchQuery);
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search by Category:',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    DropdownButton<String>(
                      value: selectedCategory,
                      hint: Text('Select a category'),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCategory = newValue!;
                        });
                      },
                      itemHeight: 50, // Adjust the height as needed
                      items: categories.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search by Location:',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    DropdownButton<String>(
                      value: selectedLocation,
                      hint: Text('Select a location'),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedLocation = newValue!;
                        });
                      },
                      itemHeight: 50, // Adjust the height as needed
                      items: locations
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Most Popular Searches:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Show suggestions here
            Text('Suggestion 1'),
            Text('Suggestion 2'),
            Text('Suggestion 3'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomButton(
                icon: Icons.home,
                label: 'Home',
                onTap: () {
                  // Handle home button tap
                  print('Home button tapped');
                },
                thisonTap: null,
              ),
              BottomButton(
                icon: Icons.search,
                label: 'Search',
                onTap: () {
                  // Handle search button tap
                  print('Search button tapped');
                },
                thisonTap: null,
              ),
              BottomButton(
                icon: Icons.favorite,
                label: 'Favorite',
                onTap: () {
                  // Handle favorite button tap
                  print('Favorite button tapped');
                },
                thisonTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void performSearch(String category, String location, String query) {
    // Perform the search based on the selected category, location, and query
    print(
        'Searching for: Category - $category, Location - $location, Query - $query');
    // Implement your search logic here
  }
}

class BottomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const BottomButton({
    required this.icon,
    required this.label,
    required thisonTap,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Icon(icon),
            SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
