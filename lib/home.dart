import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Scroll view"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 300,
            pinned: true,
            backgroundColor: Colors.red,
            title: Container(
              width: double.infinity,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          SliverAppBar(
            toolbarHeight: 300,
            backgroundColor: Colors.purple,
            pinned: true,
            title: Container(
              width: double.infinity,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.amber,
              width: double.infinity,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
              color: Colors.cyanAccent,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
