import 'package:flutter/material.dart';

class HomeTabWidget extends StatefulWidget {
  @override
  _HomeTabWidgetState createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        Center(child: Text('Marriage Content')),
        Center(child: Text('Career Content')),
        Center(child: Text('Family Content')),
        Center(child: Text('Health Content')),
      ],
    );
  }
}
