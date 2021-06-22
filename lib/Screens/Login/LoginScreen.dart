import 'package:flutter/material.dart';
import 'package:smart_news/Network/rest_api.dart';
import 'package:smart_news/Utils/form_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Define a key variable
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  static final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  //define variables for username and password
  String _username = "";
  String _password = "";
  bool hidePassword = true;
  bool isCallInProgress = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: isCallInProgress
            ? Center(
                child: CircularProgressIndicator(),
              )
            : GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: SingleChildScrollView(
                  child: Form(
                    key: globalKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 220,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              colors: [
                                Color(0xffe64980),
                                Color(0xffff8787),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              // bottomLeft: Radius.circular(80),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('images/SignInLogo.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 40),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: FormHelper.inputFieldWidget(
                            context,
                            Icon(Icons.verified_user),
                            "username",
                            "Username",
                            (onvalidateVal) {
                              if (onvalidateVal.isEmpty) {
                                return "Username is requrired.";
                              }
                              return null;
                            },
                            (onSavedVal) {
                              _username = onSavedVal;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: FormHelper.inputFieldWidget(
                            context,
                            Icon(Icons.password),
                            "password",
                            "Password",
                            (onvalidateVal) {
                              if (onvalidateVal.isEmpty) {
                                return "Password is requrired.";
                              }
                              // else if (onvalidateVal.length < 6) {
                              //   return "Password is too short.";
                              // }

                              return null;
                            },
                            (onSavedVal) {
                              _password = onSavedVal;
                            },
                            obscureText: hidePassword,
                            suffixIcon: IconButton(
                              icon: Icon(
                                hidePassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              color: Colors.blueAccent.withOpacity(0.5),
                              onPressed: () {
                                setState(
                                  () {
                                    hidePassword = !hidePassword;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: FormHelper.saveButton(
                            "Login",
                            () {
                              if (validateAndSave()) {
                                print(_username);
                                print(_password);
                                //show progressbar
                                setState(() {
                                  this.isCallInProgress = true;
                                });

                                //call login via api
                                CallApi()
                                    .loginCustomer(_username, _password)
                                    .then(
                                  (response) {
                                    setState(() {
                                      this.isCallInProgress = false;
                                    });
                                    print(response!.data!.token ?? "-");
                                    if (response.statusCode == 200) {
                                      Navigator.pushReplacementNamed(
                                          context, '/dashboard');
                                    }
                                  },
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  //Validate and save form
  bool validateAndSave() {
    final form = globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
