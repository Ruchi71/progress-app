import 'package:assignmentpro/create_account.dart';
import 'package:assignmentpro/signin.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        child: Stack(
          children: [
            Positioned(
              top: 300,
              left: 30,
              height: 380,
              width: 375,
              child: Container(
                width: 375,
                height: 380,
                color: Colors.blue[900],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Manage your Business',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Seamlessly & Intuitively',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {

                        },

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              height: 25.0,
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              "Sign in With Google",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.blue[900],
                                fontFamily: "lato",
                              ),
                            ),
                            //

                          ],
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all
                              (RoundedRectangleBorder(borderRadius:
                            BorderRadius.circular(18))),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white,

                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                vertical: 12.0,
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) =>
                                  CreateAccount()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Create an Account",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "lato",
                              ),
                            ),
                            //
                          ],
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all
                              (RoundedRectangleBorder(borderRadius:
                            BorderRadius.circular(18),
                                side: BorderSide(color: Colors.white,
                                    width: 3)
                            )),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.blue[900],
                            ),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                vertical: 12.0,
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (BuildContext context) =>
                                      SigninPage()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
