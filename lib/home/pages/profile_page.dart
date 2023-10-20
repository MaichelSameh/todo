import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
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
