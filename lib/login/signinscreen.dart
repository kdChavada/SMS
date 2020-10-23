import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_e_school/DashBord/dashbord.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'SignIn',
          style: GoogleFonts.lemonada(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashBord()),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('assets/images/padlock.png'),
                  fit: BoxFit.cover,
                  height: 150.0,
                )),
            //---ENTER USER NAME----------------

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            //-------Enter Your Mobile Number
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Mobile No',
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //--------ENTER PASSWORD----------
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //--------CONFIRM PASSWORD----------------

            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            //---------SIGN IN BUTTON--------------------
            SizedBox(
              height: 20.0,
            ),

            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.blue)),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.lobster(),
                  ),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
