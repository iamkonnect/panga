import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B5FE9),
      body: Stack(
        children: [
          // Register form area
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.72,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF8F8FC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222222),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Username
                    Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.person, color: Color(0xFFFFB86C)),
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
                        ),
                      ),
                    ),
                    // Email
                    Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.email, color: Color(0xFF6EE7B7)),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
                        ),
                      ),
                    ),
                    // Password
                    Container(
                      margin: const EdgeInsets.only(bottom: 32),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.lock, color: Color(0xFFB7AFFF)),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
                        ),
                      ),
                    ),
                    // Register button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B5FE9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Social login icons row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _SocialIcon(asset: 'assets/facebook.png'),
                        const SizedBox(width: 24),
                        _SocialIcon(asset: 'assets/google.png'),
                        const SizedBox(width: 24),
                        _SocialIcon(asset: 'assets/apple.png'),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String asset;
  const _SocialIcon({required this.asset});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.white,
      child: Image.asset(
        asset,
        width: 28,
        height: 28,
        fit: BoxFit.contain,
      ),
    );
  }
}
