import 'package:assignmentpro/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:otp_text_field/otp_text_field.dart';

class VerificationOtp extends StatefulWidget {
  const VerificationOtp({Key key}) : super(key: key);

  @override
  _VerificationOtpState createState() => _VerificationOtpState();
}

class _VerificationOtpState extends State<VerificationOtp> {
  String verId;
  String phone;
  bool codeSent = false;

  Future<void> verifyPin(String pin) async {
    PhoneAuthCredential credential =
    PhoneAuthProvider.credential(verificationId: verId, smsCode: pin);

    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      final snackBar = SnackBar(content: Text("Login Success"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(content: Text("${e.message}"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue[900],
          child: Column(children: [
            Container(
              color: Colors.blue[900],
              width: double.infinity,
              height: 170,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 100, 0, 0),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 900,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                          child: Text(
                            'OTP Verification',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text(
                          'Have you received a four digit\nVerification Code',
                          style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: OTPTextField(
                              length: 6,
                              width: MediaQuery.of(context).size.width,
                              fieldWidth: 40,
                              style: TextStyle(fontSize: 25),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.box,
                              outlineBorderRadius: 15,
                              onCompleted: (pin) {
                                verifyPin(pin);
                              },
                            ),
                        ),
                      ),

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                          child: Text(
                            'Resend Code',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),

SizedBox(height: 20,),

                      Container(
                        height: 80,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(40, 20, 50, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (BuildContext context) =>
                                        Accountpage()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Verify',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.blue[900],
                                ),
                              ),
                            )),
                      ),

                    ],
                  ),

              ),

          ]),

        ),
      ),

    );
  }
}