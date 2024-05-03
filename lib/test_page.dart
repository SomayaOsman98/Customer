import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lnet/ui/customer_data.dart';


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final TextEditingController _emailOrPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    UserCredential? userCredential = null;
    try {
      String emailOrPhone = _emailOrPhoneController.text;
      String password = _passwordController.text;

      if (emailOrPhone.isNotEmpty && password.isNotEmpty) {
        // تسجيل الدخول بالبريد الإلكتروني وكلمة المرور
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailOrPhone,
          password: password,
        );
      } else if (emailOrPhone.isNotEmpty) {
        // تسجيل الدخول برقم الهاتف
        ConfirmationResult confirmationResult = await FirebaseAuth.instance.signInWithPhoneNumber(
          emailOrPhone,
          // RecaptchaVerifier(
          //   container: null,
          //   size: null,
          // ),
        );

        // يمكنك تعديل هذا الجزء بشكل مناسب حسب احتياجاتك
        String verificationCode = ''; // استبدل برمز التحقق الذي يتم إرساله للهاتف
        PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: confirmationResult.verificationId,
          smsCode: verificationCode,
        );

        userCredential = await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
      }

      // التحقق من نجاح عملية تسجيل الدخول
      if (userCredential != null) {
        print('تم تسجيل الدخول بنجاح: ${userCredential.user!.uid}');
        Get.to(CustomerData());
      } else {
        print('لا يمكن تسجيل الدخول');
      }
    } catch (e) {
      // حدث خطأ أثناء تسجيل الدخول
      print('حدث خطأ أثناء تسجيل الدخول: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailOrPhoneController,
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني أو رقم الهاتف',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'كلمة المرور',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _signInWithEmailAndPassword,
              child: Text('تسجيل الدخول'),
            ),
          ],
        ),
      ),
    );
  }
}