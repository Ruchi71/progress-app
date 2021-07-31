import 'package:assignmentpro/create_account.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PersonAccount extends StatefulWidget {
  const PersonAccount({Key key}) : super(key: key);

  @override
  _PersonAccountState createState() => _PersonAccountState();
}

class _PersonAccountState extends State<PersonAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async => {
            await FirebaseAuth.instance.signOut(),
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateAccount(),
                ),
                    (route) => false)
          },
          child: Text('Logout'),
          style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
        ),
      )
    );
  }
}
