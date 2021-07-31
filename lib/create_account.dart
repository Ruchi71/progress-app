import 'package:assignmentpro/otpveri.dart';
import 'package:assignmentpro/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key key}) : super(key: key);


  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  final _formKey = GlobalKey<FormState>();

  var email ='';
  var password = '';
  var name = '';
  String verId;
  String phone;
  bool codeSent = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  registration() async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
          'Registered successfully',
          style: TextStyle(fontSize: 20),
        ))
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerificationOtp() ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text('password too weak',
          style: TextStyle(fontSize: 20),))
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text('Account Already Exist',style: TextStyle(fontSize: 20),))

        );
      }
    }
  }
  Future<void> verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance.signInWithCredential(credential);
          final snackBar = SnackBar(content: Text("Login Success"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        verificationFailed: (FirebaseAuthException e) {
          final snackBar = SnackBar(content: Text("${e.message}"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        codeSent: (String verficationId, int resendToken) {
          setState(() {
            codeSent = true;
            verId = verficationId;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            verId = verificationId;
          });
        },
        timeout: Duration(seconds: 60));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
                color: Colors.blue[900],
                  child: Column(children: [
                    Container(
                      color: Colors.blue[900],
                      width: double.infinity,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                            child: Text(
                              'Hello there, sign Up to continue',
                              style: TextStyle(fontSize: 22, color: Colors.grey[500]),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 30, 0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15
                                  ),
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Enter your Buisness Name',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey[300],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                controller: nameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 30, 0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15
                                  ),
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Enter your Business Email',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey[300],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter email';
                                  } else if (!value.contains('@')) {
                                    return 'please enter valid email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                              child: Text(
                                'Mobile Number',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 10, 30, 0),
                            child: IntlPhoneField(
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide()
                                ),
                              ),
                              initialCountryCode: 'IN',
                              onChanged: (phoneNumber) {
                                setState(() {
                                  phone = phoneNumber.completeNumber;
                                });
                              },

                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 30, 0),
                              child: TextFormField(
                                obscureText: true,
                                autofocus: false,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15
                                  ),
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Enter your Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey[300],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'please enter password';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                            child: Row(
                              children: [
                                RoundCheckBox(
                                  onTap: (selected) {},
                                  checkedColor: Colors.blue[900],
                                ),

                                SizedBox(width: 10,),
                                Text(
                                  'By creating an account you agree',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  'to our',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[600]),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  'terms and conditions',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue[900]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(40, 20, 30, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      setState(() {
                                        email = emailController.text;
                                        password = passwordController.text;
                                        name = nameController.text;
                                      });
                                      registration();
                                      verifyPhone();
                                    }

                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sign Up',
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
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation1,
                                      animation2) => SigninPage(),
                                      transitionDuration: Duration(seconds: 0),
                                      ));
                                    },
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.blue[900],
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),

              ),
        ),
      ),
        

    );
  }
}

