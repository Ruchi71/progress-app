import 'package:assignmentpro/create_account.dart';
import 'package:assignmentpro/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class SigninPage extends StatefulWidget {

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 0,

        ),
        body:SingleChildScrollView(
          child: Container(
              color: Colors.blue[900],
              child: Column(
                  children: [
                    Container(
                      color: Colors.blue[900],
                      height: 100,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Text('Welcome',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                    Container(

                      height: 900,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),


                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                            child: Text('Welcome Back',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                              ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text('Hello there, sign in to continue',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.grey[500]
                              ),),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                              child: Text('Username or Email',
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]
                                ),),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 10, 20, 0),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,

                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Enter your Username or Email',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                  suffixIcon: Icon(Icons.check_circle,
                                    color: Colors.grey[400],

                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey[300],

                                    ),
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                              child: Text('Password',
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]
                                ),),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 10, 20, 0),
                              child: TextFormField(
                                obscureText: true,

                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Enter your Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                  ),
                                  suffixIcon: Icon(Icons.check_circle,
                                    color: Colors.grey[400],

                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey[200],

                                    ),
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text('Forgot Password?',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900]
                            ),),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 60,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                                child: ElevatedButton(onPressed: () {

                                },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Sign in',style:
                                      TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all
                                      (RoundedRectangleBorder(borderRadius:
                                    BorderRadius.circular(20))),
                                    backgroundColor: MaterialStateProperty
                                        .all(Colors.blue[900],),
                                  ),
                                )
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (BuildContext context) =>
                                              CreateAccount()));

                                    },
                                    child: Text(
                                      'Sign Up',
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

                  ]
              )
          ),
        )
    );
  }
}