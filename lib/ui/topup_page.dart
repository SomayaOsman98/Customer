import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.80;
    final width = MediaQuery.of(context).size.width *0.65;
    return  Scaffold(
      body:SafeArea(
        child: Center(
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Stack(
              children: [
                Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: buildTextFieldtxt(txt: ' ادخل رقم الكرت', icon: const Icon(Icons.phone_android_outlined, color:Color(
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
                            padding: const EdgeInsets.symmetric(vertical: 8),

                          ),
                          child: const Text("تعبئة الرصيد", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color:Colors.white,
                          ),)),
                    ),
                  ],
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
