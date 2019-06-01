import 'package:flutter/material.dart';

class MenteeLoginPage extends StatefulWidget {
  @override
  _MenteeLoginPageState createState() => _MenteeLoginPageState();
}

class _MenteeLoginPageState extends State<MenteeLoginPage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'acceptTerms': false,
  };

  Widget _buildSignupForm(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: <Widget>[
            _buildEmailTextField(),
            SizedBox(
              height: 20,
            ),
            _buildPasswordTextField(),
            SizedBox(
              height: 20,
            ),
            //_buildConfirmPasswordTextField(),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              onPressed: _submitForm,
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_globalKey.currentState.validate()) {
      _globalKey.currentState.save();
    }
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'E-Mail'),
      validator: (String value) {
        if (value.isEmpty ||
            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'Password'),
      validator: (String value) {
        if (value.isEmpty || value.length < 6) {
          return 'Password must have at least 6 characters';
        }
      },
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                  child: FlutterLogo(
                size: 80,
              )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Flutter',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Connect',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              _buildSignupForm(context),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'menteeSignup');
                    },
                    child: Text(
                      "Don't have an account? Sign Up.",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    )),
              ),
              Container(
                child: Text('--- OR ---',
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
              SizedBox(
                height: 20,
              ),
              OutlineButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                onPressed: () async {

                },
                child: Text(
                  'Login with Google',
                  style: TextStyle(
                      fontSize: 23, color: Theme.of(context).primaryColor),
                ),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
