import 'package:flutter/material.dart';
import 'package:speedfoodApp/src/page/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _toggleVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Votre e-ameil ou Identifiant",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

   Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Mot de passe",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Connexion", 
            style: TextStyle(
              fontSize:40.0, 
              fontWeight: FontWeight.bold) 
            ),
            SizedBox(height: 90.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Mot de passe oublier", style: TextStyle(color: Colors.blue),),
              ],
            ),
            SizedBox(height:30.0),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20.0),
                    _buildPasswordTextField(),
                  ],
                ),
              ),
            ),
            SizedBox(height:40.0),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text("Connexion", 
                style: TextStyle(
                  color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Avez vous un compte ?", style: TextStyle(fontSize:18.0, color: Color(0xFFBDC2CB), fontWeight: FontWeight.bold),),
                SizedBox(width: 20.0),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => RegisterPage()));
                  },
                  child: Text("Inscriptiom", 
                  style: TextStyle(
                    fontSize:18.0, 
                    color: Colors.blue, 
                    fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}