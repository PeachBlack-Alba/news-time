import 'package:flutter/material.dart';

import '../ui/colors.dart';

class BrowseNewsPage extends StatefulWidget {
  const BrowseNewsPage({Key? key}) : super(key: key);

  @override
  _BrowseNewsPageState createState() => _BrowseNewsPageState();
}

class _BrowseNewsPageState extends State<BrowseNewsPage> {
  int _selectedIndex = 0;

  final List<String> tabItems = ['Random', 'Sports', 'Politics'];

  final Map<String, List<String>> newsItems = {
    'Random': ['News item 1', 'News item 2', 'News item 3'],
    'Sports': ['Sports news 1', 'Sports news 2', 'Sports news 3'],
    'Politics': ['Politics news 1', 'Politics news 2', 'Politics news 3'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: AppColors.black),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Browse',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const Text(
                    "Discover what has happened today",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  const SearchBarTab(),
                  const SizedBox(height: 16),
                  ListTabView(
                    selectedIndex: _selectedIndex,
                    onTabSelected: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    tabItems: tabItems,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: newsItems[tabItems[_selectedIndex]]!.length,
                itemBuilder: (context, index) {
                  final item = newsItems[tabItems[_selectedIndex]]![index];
                  return ListTile(
                    title: Text(
                      item,
                      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomTabBar(),
    );
  }
}

class SearchBarTab extends StatelessWidget {
  const SearchBarTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: AppColors.lightGrey4,
            ),
            onPressed: () {
              // Handle search icon press
            },
          ),
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(fontSize: 20.0, color: AppColors.lightGrey4),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                // Handle text input change
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListTabView extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final List<String> tabItems;

  const ListTabView({
    required this.selectedIndex,
    required this.onTabSelected,
    required this.tabItems,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: tabItems.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;
        return GestureDetector(
          onTap: () => onTabSelected(index),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: selectedIndex == index ? AppColors.accentColorBlue : AppColors.white,
            ),
            child: Text(
              item,
              style: TextStyle(
                color: selectedIndex == index ? AppColors.white : AppColors.lightGrey4,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: AppColors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark_border,
            color: AppColors.white,
          ),
          label: 'Bookmarks',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: AppColors.white,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
