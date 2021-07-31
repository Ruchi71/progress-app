import 'package:assignmentpro/personaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({Key key}) : super(key: key);

  @override
  _AccountpageState createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 50, 0, 0),
                  child: Row(
                    children: [
                      Text('Good Morning,',style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey
                      ),),
                      SizedBox(width: 90,),
                      Icon(Icons.notifications,size: 40,)

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text('Ruchi',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 30, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                      color: Colors.blue[900],
                      size: 30,),
                      suffixIcon: Icon(Icons.mic,
                      color: Colors.blue[900],
                      size: 30,),
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[300],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                  child: Text('Projects',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                  child: Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
                                child:
                                  CircularPercentIndicator(radius: 80,
                                  lineWidth: 10,
                                    animation: true,
                                    percent: 0.75,
                                    center: Text('75%',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white

                                    ),),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.white,
                                    backgroundColor: Colors.black,

                                  )



                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 0,0),
                                child: Text('App Design',style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                                ),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Icon(Icons.animation,
                                    size: 40,
                                    color: Colors.grey,),
                                  ),
                                  SizedBox(width: 20,),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                                    child: Icon(Icons.circle,
                                      size: 30,
                                      color: Colors.grey,),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
                                  child:
                                  CircularPercentIndicator(radius: 80,
                                    lineWidth: 10,
                                    animation: true,
                                    percent: 0.75,
                                    center: Text('75%',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white

                                      ),),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.white,
                                    backgroundColor: Colors.black,

                                  )



                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 0,0),
                                child: Text('Social Media',style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white
                                ),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Icon(Icons.animation,
                                      size: 40,
                                      color: Colors.grey,),
                                  ),
                                  SizedBox(width: 20,),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                                    child: Icon(Icons.circle,
                                      size: 30,
                                      color: Colors.grey,),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
                                  child:
                                  CircularPercentIndicator(radius: 80,
                                    lineWidth: 10,
                                    animation: true,
                                    percent: 0.75,
                                    center: Text('75%',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white

                                      ),),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.white,
                                    backgroundColor: Colors.black,

                                  )



                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 20, 0,0),
                                child: Text('App Design',style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white
                                ),),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Icon(Icons.animation,
                                      size: 40,
                                      color: Colors.grey,),
                                  ),
                                  SizedBox(width: 20,),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                                    child: Icon(Icons.circle,
                                      size: 30,
                                      color: Colors.grey,),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,20, 0, 0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text('Request service',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(26, 20, 0, 0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text('Support',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,20, 0, 0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text('Appointment',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(26, 20, 0, 0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text('News',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                      child: Text('Today',style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                      child: Text('Week',style: TextStyle(
                          fontSize: 28,
                          color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                      child: Text('Month',style: TextStyle(
                          fontSize: 28,
                          color: Colors.black
                      ),),
                    )
                  ],
                ),
                Divider(
                  color: Colors.blue[900],
                  thickness: 8,
                  height: 25,
                  indent: 30,
                  endIndent: 330,
                ),


                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(Icons.check_circle,
                  color: Colors.blue[900],),
                  title: Text('Republic Day Creative',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  subtitle: Text('Social Media Creative',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),
                  trailing: Text('10:20 am',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]
                  ),),
                ),
                SizedBox(height: 20,),
                ListTile(
                  leading: Icon(Icons.check_circle,
                  color: Colors.blue[900],),
                  title: Text('Sales Post for Campaign',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                  subtitle: Text('Social Media Creative',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),
                  trailing: Text('3:40 am',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                  ),),
                ),
              ],

          ),

      ),
        bottomNavigationBar:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[300],
            selectedItemColor: Colors.grey[800],
            unselectedItemColor: Colors.grey[600],
            selectedFontSize: 18,
            unselectedFontSize: 18,

            onTap: (value) {
              // Respond to item press.
            },
            items: [
              BottomNavigationBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home,size: 40,),
              ),
              BottomNavigationBarItem(
                title: Text('Messages',),
                icon: Icon(Icons.mail,size: 40,),
              ),
              BottomNavigationBarItem(
                title: Text('Payment'),
                icon: Icon(Icons.payment,size: 40,),
              ),
              BottomNavigationBarItem(
                title: Text('Account'),
                icon: IconButton(icon: Icon(Icons.person,size: 40,),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) =>
                          PersonAccount()));

                },
                ),
              ),
            ],
          ),
        )
    );
  }
}
