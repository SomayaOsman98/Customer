import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'customer_data.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Page",
              style: TextStyle(fontSize: 25),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email must not be empty';
                      } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          UserCredential userCredential =
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          if (userCredential.user != null) {
                            Get.off(CustomerData());
                          } else {
                            Get.snackbar(
                              "Error",
                              "Failed to sign in",
                              colorText: Colors.white,
                              snackPosition: SnackPosition.TOP,
                              backgroundColor: Colors.redAccent,
                            );
                          }
                        } on FirebaseAuthException catch (e) {
                          print(e.code);
                          if (e.code == "invalid-email") {
                            Get.snackbar(
                              "Error",
                              "Invalid email",
                              colorText: Colors.white,
                              snackPosition: SnackPosition.TOP,
                              backgroundColor: Colors.redAccent,
                            );
                          }
                        } catch (e) {
                          print(e);
                          Get.snackbar(
                            "Error",
                            "An error occurred",
                            colorText: Colors.white,
                            snackPosition: SnackPosition.TOP,
                            backgroundColor: Colors.redAccent,
                          );
                        }
                      }
                    },
                    child: Text("Sign In"),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // Navigate to sign up page
              },
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text("Don't have an account? Create one"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
