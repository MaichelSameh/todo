import 'package:flutter/material.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 170),
            Image.asset(
              "assets/illustration/illustration.png",
              height: 160,
            ),
            const SizedBox(height: 105),
            const Text(
              "Your order\nHas been accepted",
              style: TextStyle(
                fontSize: 26,
                color: Color(0xFF4D535A),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Your item has been and is on its way\nto bein processed",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF7A7D81),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 105),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF0C8EE0)),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(235, 50)),
              ),
              child: const Text(
                "TRACK ORDER",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 18),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "BACK TO HOME",
                  style: TextStyle(color: Color(0xFF0C8EE0)),
                ))
          ],
        ),
      ),
    );
  }
}
