import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Logo
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 160.0, bottom: 40.0  ),
            child: Image.asset('lib/images/avocado.png'),
          ),

          // we delivery grocery at your door step
          const Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver grocery at your door step',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40.0),

          // fresh items every day
          const Text(
            'Fresh items every day',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),

          const Spacer(),

          // get started
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),

          const Spacer(),

        ],
      ),
    );
  }
}