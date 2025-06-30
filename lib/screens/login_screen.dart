import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B5FE9), // Figma blue background
      body: Stack(
        children: [
          // Logo and app name at the top center
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(
                  'assets/panga_logo.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                // Removed the title below the logo
              ],
            ),
          ),
          // Login form area
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.68,
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
                      'Login',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF222222),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Input fields container
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.person, color: Color(0xFFFFB86C)),
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                              border: InputBorder.none,
                            ),
                          ),
                          Divider(height: 1, color: Color(0xFFF0F0F0)),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.lock, color: Color(0xFFB7AFFF)),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                              border: InputBorder.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                              color: Color(0xFF7B7B7B),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF5B5FE9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 36),
                              elevation: 0,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
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

// For images not showing up, make sure in your pubspec.yaml you have:
// flutter:
//   assets:
//     - assets/panga_logo.png
//     - assets/facebook.png
//     - assets/google.png
//     - assets/apple.png
//
// Also, ensure the files assets/google.png and assets/apple.png actually exist in your assets folder and are named correctly (case-sensitive).
