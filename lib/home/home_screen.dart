import 'package:first_project/home/pages/home_page.dart';
import 'package:first_project/home/pages/profile_page.dart';
import 'package:first_project/widgets/dialogs/add_tasak_dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: PageController(),
              children: <Widget>[
                HomePage(),
                SizedBox(),
                SizedBox(),
                ProfilePage(),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                height: 70,
                width: double.infinity,
                color: const Color(0xFF363636),
                margin: const EdgeInsets.only(top: 32),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    buildNavItem(
                      icon: Icons.home_outlined,
                      title: "Index",
                    ),
                    buildNavItem(
                      icon: Icons.calendar_month_outlined,
                      title: "Calendar",
                    ),
                    const Spacer(),
                    buildNavItem(
                      icon: Icons.access_time_outlined,
                      title: "Focus",
                    ),
                    buildNavItem(
                      icon: Icons.person_outline,
                      title: "Profile",
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (_) => AddTaskDialog(
                      ctx: context,
                    ),
                  );
                  setState(() {});
                },
                child: Container(
                  height: 64,
                  width: 64,
                  decoration: const BoxDecoration(
                    color: Color(0xFF8687E7),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Expanded buildNavItem({
    required IconData icon,
    required String title,
  }) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 24,
          color: Colors.white,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    ));
  }
}
