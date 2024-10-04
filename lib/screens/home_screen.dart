import 'package:assignment_1/screens/marrage_tab_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Correct the tab length to match the actual number of tabs
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 48, 47),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 43, 41, 41),
          title: Text("Premium Reports"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 6,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(207, 27, 16, 16),
                    prefixIcon: Icon(Icons.search,
                        color: const Color.fromARGB(255, 48, 23, 190)),
                    hintText: 'Search Marriage, Career, etc.',
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // Tabs
              Column(
                children: [
                  TabBar(
                    indicatorColor: const Color.fromARGB(255, 219, 214, 214),
                    labelColor: const Color.fromARGB(255, 218, 212, 212),
                    unselectedLabelColor:
                        const Color.fromARGB(136, 204, 201, 201),
                    tabs: [
                      Tab(text: 'Marriage'),
                      Tab(text: 'Career'),
                      Tab(text: 'Family'),
                      Tab(text: 'Health'),
                    ],
                  ),
                  // Content for each tab
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: TabBarView(
                      children: [
                        // Marriage Tab
                        // Career Tab
                       MarrageTabScreen(),
                       
                       
                       
                       
                       
                        Center(
                          child: Text(
                            "Career Reports with a perfect astrologer",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 194, 174, 174),
                            ),
                          ),
                        ),
                        // Family Tab
                        Center(
                          child: Text(
                            "Family Reports",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 173, 142, 142),
                            ),
                          ),
                        ),
                        // Health Tab
                        Center(
                          child: Text(
                            "Health Reports",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 214, 186, 186),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
