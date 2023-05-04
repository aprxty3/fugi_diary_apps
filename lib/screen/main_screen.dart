import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      drawer: _drawer(),
      body: _content(),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.draw,
              color: Colors.black,
            ),
          );
        },
      ),
    );
  }

  _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _content() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WELCOME',
            style: GoogleFonts.hind(
              fontSize: 16,
              letterSpacing: 1.1,
              fontWeight: FontWeight.w700,
              color: const Color(0xff96DAF0),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Oh, the places you’ll go!\nFollow our expedition teams',
            style: GoogleFonts.ebGaramond(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.4,
              shadows: [
                Shadow(
                  offset: const Offset(5, 5),
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
          ),
          Center(
            child: Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_ZdVYgO.json',
              width: MediaQuery.of(context).size.width * .8,
            ),
          ),
          Text(
            'EXPEDITIONS',
            style: GoogleFonts.hind(
              fontSize: 16,
              letterSpacing: 1.1,
              fontWeight: FontWeight.w700,
              color: const Color(0xff96DAF0),
            ),
          ),
        ],
      ),
    );
  }
}
