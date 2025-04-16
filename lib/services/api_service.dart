import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  // Method for mobile number login
  Future<bool> loginWithMobile(String mobileNumber) async {
    final response = await http.post(
      Uri.parse('https://example.com/api/login/mobile'),
      body: json.encode({'mobile': mobileNumber}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  // Method for Google login
  Future<bool> loginWithGoogle() async {
    return true; // Return true if successful
  }

  // Method for Facebook login
  Future<bool> loginWithFacebook() async {
    return true; // Return true if successful
  }

  // Method for sending OTP
  Future<bool> sendOTP(String email) async {
    final response = await http.post(
      Uri.parse('https://example.com/api/send-otp'),
      body: json.encode({'email': email}),
      headers: {'Content-Type': 'application/json'},
    );

    return response.statusCode == 200; // Return true if successful
  }

  // Method for verifying OTP
  Future<bool> verifyOTP(String otp) async {
    final response = await http.post(
      Uri.parse('https://example.com/api/verify-otp'),
      body: json.encode({'otp': otp}),
      headers: {'Content-Type': 'application/json'},
    );

    return response.statusCode == 200; // Return true if successful
  }

  // Method for user registration
  Future<bool> registerUser(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://example.com/api/register'),
      body: json.encode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      return true; // Registration successful
    } else {
      return false; // Registration failed
    }
  }
}
