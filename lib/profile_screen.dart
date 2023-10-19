import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Column(
        children: <Widget>[
          SizedBox(height: 13 + MediaQuery.paddingOf(context).top),
          ClipOval(
            child: Image.network(
              "https://images.unsplash.com/photo-1682685797898-6d7587974771?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60",
              height: 85,
              width: 85,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Maichel Same",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            textScaleFactor: 1,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 58,
                          width: 155,
                          decoration: BoxDecoration(
                            color: const Color(0xFF363636),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Center(
                            child: Text(
                              "10 Tasks left",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 58,
                          width: 155,
                          decoration: BoxDecoration(
                            color: const Color(0xFF363636),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Center(
                            child: Text(
                              "10 Tasks left",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Settings",
                      style: TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    buildSingleItem(
                      icon: Icons.settings_outlined,
                      title: "App settings",
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Account",
                      style: TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    buildSingleItem(
                      icon: Icons.person_outline,
                      title: "Change account name",
                    ),
                    const SizedBox(height: 8),
                    buildSingleItem(
                      icon: Icons.key,
                      title: "Change account password",
                    ),
                    const SizedBox(height: 8),
                    buildSingleItem(
                      icon: Icons.camera_alt_outlined,
                      title: "Change account image",
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "About",
                      style: TextStyle(
                        color: Color(0xFFAFAFAF),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    buildSingleItem(
                      icon: Icons.category_outlined,
                      title: "About US",
                    ),
                    const SizedBox(height: 8),
                    buildSingleItem(
                      icon: Icons.info_outline,
                      title: "FAQ",
                    ),
                    const SizedBox(height: 8),
                    buildSingleItem(
                      icon: Icons.electric_bolt_outlined,
                      title: "Help & Feedback",
                    ),
                    const SizedBox(height: 8),
                    buildSingleItem(
                      icon: Icons.thumb_up_alt_outlined,
                      title: "Support US",
                    ),
                  ],
                ),
              ),
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
              Container(
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

  Padding buildSingleItem({
    required String title,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 24,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_right,
            size: 24,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
