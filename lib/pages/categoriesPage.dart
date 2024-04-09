import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class categoriesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 254, 168, 168),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 0,
                ),
                width: MediaQuery.of(context).size.width,
                height: 85,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 254, 168, 168),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                        ),
                        const Text(
                          'Welcome!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Container(
                height: 150,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: [
                    Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Carousel Item 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Carousel Item 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Carousel Item 3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 270,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CategoryButton(
                      icon: Icons.category,
                      label: 'Category 1',
                      onTap: () {
                        // Handle Category 1 press
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: CategoryButton(
                      icon: Icons.category,
                      label: 'Category 2',
                      onTap: () {
                        // Handle Category 2 press
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 470,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CategoryButton(
                      icon: Icons.category,
                      label: 'Category 3',
                      onTap: () {
                        // Handle Category 3 press
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: CategoryButton(
                      icon: Icons.category,
                      label: 'Category 4',
                      onTap: () {
                        // Handle Category 4 press
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 60,
                color: Colors.white,
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BottomButton(
                      icon: Icons.favorite,
                      label: 'Favorites',
                      onTap: () {
                        // Handle favorites button press
                      },
                    ),
                    BottomButton(
                      icon: Icons.search,
                      label: 'Search',
                      onTap: () {
                        // Handle search button press
                      },
                    ),
                    BottomButton(
                      icon: Icons.home,
                      label: 'Home',
                      onTap: () {
                        // Handle home button press
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
        width: 150,
        // Adjust the width as needed
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 168, 168),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Reservations'),
                onTap: () {
                  // Handle Item 1 press
                },
              ),
              ListTile(
                title: const Text('Contact us'),
                onTap: () {
                  // Handle Item 1 press
                },
              ),
              ListTile(
                title: const Text('Help and support'),
                onTap: () {
                  // Handle Item 2 press
                },
              ),
              ListTile(
                title: const Text('About us'),
                onTap: () {
                  // HandleItem 3 press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const CategoryButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
          ),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const BottomButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
