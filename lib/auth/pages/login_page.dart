import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lnet/storage.dart';
import 'package:lnet/ui/customer_data.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController contractNumber = TextEditingController();
  String userName = '';
  String userID = '';

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.65;
    final width = MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: SafeArea(
        child: Center(
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0, 2),
                  blurRadius: 25,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset("img/logo2.jpeg", width: 140),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "الرجاء تسجيل الدخول للمتابعة",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: buildTextField(
                                txt: ' رقم الهاتف',
                                icon: const Icon(
                                  Icons.phone_android_outlined,
                                  color: Color(0xffb50218),
                                ),
                                controller: phoneNumber,
                                isPhone: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: buildTextField(
                                txt: ' رقم العقد',
                                icon: const Icon(
                                  Icons.account_balance_wallet_rounded,
                                  color: Color(0xffb50218),
                                ),
                                controller: contractNumber,
                                isPhone: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: width,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              String phone = phoneNumber.text;
                              String contract = contractNumber.text;

                              bool isValid =
                              await validateInputs(phone, contract);

                              if (isValid) {
                                // تم التحقق بنجاح، اتخاذ الإجراء المناسب
                                Get.to(CustomerData(userID: userID,),
                                    //تمرير القيم
                                    arguments: {'userName': userName, 'userID': userID});
                              } else {
                                print("error");
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffb50218),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextField({
    required String txt,
    required Icon icon,
    required TextEditingController controller,
    required bool isPhone,
  }) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          if (isPhone) {
            if (value!.length != 10) {
              return 'يجب أن يحتوي رقم الهاتف على10 أرقام';
            }
          } else {
            if (value!.isEmpty) {
              return 'يجب إدخال رقم العقد';
            }
          }
        }
        return null;
      },
      controller: controller,
      keyboardType: isPhone ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        hintText: txt,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  Future<bool> validateInputs(String phoneNumber, String contractNumber) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('phone', isEqualTo: phoneNumber)
        .where('number', isEqualTo: contractNumber)
        .get();

    if (snapshot.docs.isNotEmpty) {

      userName = snapshot.docs[0]['fullname']; // استخراج اسم المستخدم من الوثيقة الأولى
      userID = snapshot.docs[0].id; // استخراج معرف المستخدم من الوثيقة الأولى
      storage.write('phone', phoneNumber);
      storage.write('cnumber', contractNumber);
      storage.write('userid', userID);
      storage.write('username', userName);

      return true;
    } else {
      return false;
    }
  }
}