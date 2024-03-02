import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/description_page.dart';
import 'package:flutter_fundamentals/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              if (backgroundColor == Colors.white) {
                setState(() {
                  backgroundColor = Colors.red;
                });
              } else {
                setState(() {
                  backgroundColor = Colors.white;
                });
              }
            },
            icon: const Icon(Icons.color_lens),
          )
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: ListTile(
                  title: Text(
                    'Flutter Fundamentals',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings),
                title: const Text(
                  'Settings',
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const LoginPage();
                  }));
                },
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Wrap(
                spacing: 20,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Money'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Bitcoin'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Stock Market'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('House Market'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Diamond Hands'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'How to get rich',
                        imagePath: 'rich.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset('images/rich.png'),
                    const ListTile(
                      title: Text('How to get rich'),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'Should you buy a house',
                        imagePath: 'house.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset('images/house.png'),
                    const ListTile(
                      title: Text('Should you buy an house'),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'Stock Market',
                        imagePath: 'stock_market.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset('images/stock_market.png'),
                    const ListTile(
                      title: Text('Stock Market'),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'How to make Apps',
                        imagePath: 'mobile_app.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset('images/mobile_app.png'),
                    const ListTile(
                      title: Text('How to make Apps'),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
