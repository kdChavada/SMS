import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_e_school/DashBord/dashbord.dart';
import 'package:our_e_school/login/signinscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'LOGIN',
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
            //Icon Set
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.cover,
                  height: 150.0,
                )),

            //UserName text field

            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            //Password text Field
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

            //ForgetPassword Flat Button

            FlatButton(
              onPressed: () {
                //forgot password screen
              },
              textColor: Colors.blue,
              child: Text(
                'Forgot Password',
                style: GoogleFonts.lobster(),
              ),
            ),

            //Login  button
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blue)),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'Student Login',
                    style: GoogleFonts.lobster(),
                  ),
                  onPressed: () {},
                )),

            SizedBox(
              height: 20.0,
            ),

            //-----------do you no Account--------

            Container(
              child: Row(
                children: [
                  Text(
                    "Does not have account?",
                    style: GoogleFonts.lobster(),
                  ),
                  FlatButton(
                      textColor: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Text('Sign in', style: GoogleFonts.lobster()))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
