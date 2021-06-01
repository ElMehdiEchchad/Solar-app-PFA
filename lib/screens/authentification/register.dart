import 'package:flutter/material.dart';
import 'authentification.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _Register();
  }
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    var primaryColor = Theme.of(context).primaryColor;
    var accentColor = Theme.of(context).accentColor;
    return (Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset("shape.png"),
                    Image.asset("ampoule.png"),
                  ],
                ),
              ],
            ),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: TextFormField(
                cursorColor: primaryColor,
                decoration: inputDecoration(
                    primaryColor, accentColor, 'Enter your Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30,
              ),
              child: TextFormField(
                  cursorColor: primaryColor,
                  decoration: inputDecoration(
                      primaryColor, accentColor, 'Enter your Password')),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30,
              ),
              child: TextFormField(
                  cursorColor: primaryColor,
                  decoration: inputDecoration(
                      primaryColor, accentColor, 'Confirm your Password')),
            ),
            Spacer(flex: 2),
            ElevatedButton(
              onPressed: () => {},
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: accentColor,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width - 50, 50),
                  side: BorderSide(width: 2.0, color: primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: primaryColor),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => {moveToLoginPage(context)},
              child: Text(
                "Already have an Account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: primaryColor,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width - 50, 50),
                side: BorderSide(width: 2.0, color: primaryColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    ));
  }

  InputDecoration inputDecoration(
      Color primaryColor, Color accentColor, String text) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      labelText: text,
      labelStyle: TextStyle(color: accentColor),
    );
  }

  void moveToLoginPage(BuildContext context) {
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
    Navigator.of(context)
        .push(new MyCustomRoute(builder: (context) => Login()));
  }
}

