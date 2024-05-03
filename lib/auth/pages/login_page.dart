import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height*0.80;
    final width = MediaQuery.of(context).size.width*0.45;
    return Scaffold(
      backgroundColor: const Color(0xffb50218).withOpacity(0.7),
      body: SafeArea(
        child: Center(
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 450, vertical: 120),
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
                        child:  Column(
                          children: [
                         Image.asset("img/logo2.jpeg", width: 140, ),
                          SizedBox(height: 15,),
                            Text(
                              "الرجاء تسجيل الدخول للمتابعة",
                              style: TextStyle(
                                color:Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key:formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: buildTextFieldtxt(txt: ' رقم الهاتف', icon: const Icon(Icons.phone_android_outlined, color:Color(
                                  0xffb50218))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: buildTextFieldtxt1(txt: ' رقم العقد', icon: const Icon(Icons.account_balance_wallet_rounded, color:Color(
                                  0xffb50218))),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: width,
                        child:ElevatedButton(
                            onPressed: () async {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffb50218),
                              padding: const EdgeInsets.symmetric(vertical: 20),

                            ),
                            child: const Text("تسجيل الدخول", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:Colors.white,
                            ),)),
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


  TextFormField buildTextFieldtxt({required String txt, required Icon icon}) {
    return TextFormField(
      validator: (value) {
        if (value != null || value!.isNotEmpty) {
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'Wrong Email format';
          }
        }
        else
        {
          return 'Email must not be empty';

        }
        return null;
      },
      controller: email,
      decoration: InputDecoration(
          prefixIcon:Padding(
            padding: const EdgeInsets.only(right: 20.0, left:15),
            child:icon,
          ),
          hintText: txt,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide(color: Color(0xffb50218)),
          )
      ),
    );
  }
  TextFormField buildTextFieldtxt1({required String txt, required Icon icon}) {
    return TextFormField(
      validator: (value) {
        if (value != null || value!.isNotEmpty) {
          if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'Wrong Email format';
          }
        }
        else
        {
          return 'Email must not be empty';

        }
        return null;
      },
      controller: email,
      decoration: InputDecoration(
          prefixIcon:Padding(
            padding: const EdgeInsets.only(right: 20.0, left:15),
            child:icon,
          ),
          hintText: txt,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide(color: Color(0xffb50218)),
          )
      ),
    );
  }
}
